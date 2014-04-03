Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")
Page.create(conclusion: true, parent_id: page.id, content: "Go into the forest")
Page.create(conclusion: true, parent_id: page.id, content: "Walk down the road")
