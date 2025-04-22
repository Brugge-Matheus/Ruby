10.times do 
  5.times do
    Task.create(
      title: 'Tarefa ' + rand(1..30).to_s,
      description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est debitis obcaecati ducimus quas, maiores possimus eos non deleniti! Ipsum repudiandae voluptas rem, quae vitae quisquam adipisci nihil neque quia molestias.'
    )
  end
end
