using Plots, Statistics

plotly()

NUM = 1000

function is_single(kindness::Float64, looks::Float64, LIM::Float64=9.0)::Bool
    d = √(kindness^2 + looks^2)
    if d > LIM
        single = false
    else
        single = true
    end
    return single
end

function assign_color(single::Bool)::String
    if single
        output = "red"
    else
        output = "blue"
    end
    return output
end

kindness = rand(1:.1:10, NUM);
looks = rand(1:.1:10, NUM);
singles = is_single.(kindness, looks);

p = scatter(looks, kindness, color=assign_color.(singles), legend = false)
xlabel!("Looks")
ylabel!("Kindness")

println("Correlation of kindness vs looks for $NUM people is: $(cor(kindness, looks))")
println("Correlation of kindness vs looks conditioned on single status $(sum(singles)) is $(cor(kindness[singles], looks[singles]))")

