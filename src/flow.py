from metaflow import FlowSpec, step

class SimpleFlow(FlowSpec):
      
        
    @step
    def start(self):
        self.message = 'This is simple!'
        self.next(self.process_message)

    @step
    def process_message(self):
        print('the message is: %s' % self.message)
        self.next(self.end)

    @step
    def end(self):
        print('the message is still: %s' % self.message)

if __name__ == '__main__':
    SimpleFlow()