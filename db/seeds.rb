# users

User.create(name: 'Terry Threatt', email: 'terry.threatt@gmail.com', password: 'password')
User.create(name: 'Terrance Threatt', email: 'terry.threatt@outlook.com', password: 'password')
User.create(name: 'John Smith', email: 'username@email.com', password: 'password')

# investments

Investment.create(name: 'Apple Stock', date: Time.now, amount: 1000, description: 'Bought Apple stock for a discount', kind: 'Stock', user_id: '1')
Investment.create(name: 'Real Estate', date: Time.new(2018, 1, 1), amount: 25000, description: 'Bought new investment property downtown', kind: 'Real Estate', user_id: '2')
