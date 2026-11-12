function remote_init()
	local items={
		{name="Keyboard", input="keyboard"},
												
		{name="BD Level", input="value", min=0, max=127},
		{name="SD Level", input="value", min=0, max=127},
		{name="LT Level", input="value", min=0, max=127},
		{name="MT Level", input="value", min=0, max=127},
		{name="HT Level", input="value", min=0, max=127},
		{name="RS Level", input="value", min=0, max=127},
		{name="HC Level", input="value", min=0, max=127},
		{name="CH Level", input="value", min=0, max=127},
		{name="OH Level", input="value", min=0, max=127},
		{name="CC Level", input="value", min=0, max=127},
		{name="RC Level", input="value", min=0, max=127},
		
		{name="BD Tune", input="value", min=0, max=127},
		{name="SD Tune", input="value", min=0, max=127},
		{name="LT Tune", input="value", min=0, max=127},
		{name="MT Tune", input="value", min=0, max=127},
		{name="HT Tune", input="value", min=0, max=127},
		{name="RS Tune", input="value", min=0, max=127},
		{name="HC Tune", input="value", min=0, max=127},
		{name="CH Tune", input="value", min=0, max=127},
		{name="OH Tune", input="value", min=0, max=127},
		{name="CC Tune", input="value", min=0, max=127},
		{name="RC Tune", input="value", min=0, max=127},
		
		{name="BD Decay", input="value", min=0, max=127},
		{name="SD Decay", input="value", min=0, max=127},
		{name="LT Decay", input="value", min=0, max=127},
		{name="MT Decay", input="value", min=0, max=127},
		{name="HT Decay", input="value", min=0, max=127},
		{name="RS Decay", input="value", min=0, max=127},
		{name="HC Decay", input="value", min=0, max=127},
		{name="CH Decay", input="value", min=0, max=127},
		{name="OH Decay", input="value", min=0, max=127},
		{name="CC Decay", input="value", min=0, max=127},
		{name="RC Decay", input="value", min=0, max=127},
		
		{name="BD Comp", input="value", min=0, max=127},
		{name="SD Comp", input="value", min=0, max=127},
		
		{name="BD Attack", input="value", min=0, max=127},
		{name="SD Snappy", input="value", min=0, max=127},

		{name="Accent", input="value", min=0, max=127},

		{name="Reverb Level", input="value", min=0, max=127},
		{name="Reverb Time", input="value", min=0, max=127},
		{name="Reverb Gate", input="value", min=0, max=127},

		{name="Delay Level", input="value", min=0, max=127},
		{name="Delay Time", input="value", min=0, max=127},
		{name="Delay Feedback", input="value", min=0, max=127},

		{name="External In Level", input="value", min=0, max=127},
		{name="External In Side Chain", input="value", min=0, max=127},

		{name="Shuffle", input="value", min=0, max=127},

		
			}
	remote.define_items(items)

	local inputs={
		{pattern="b9 18 xx", name="BD Level"},
		{pattern="b9 1d xx", name="SD Level"},
		{pattern="b9 30 xx", name="LT Level"},
		{pattern="b9 33 xx", name="MT Level"},
		{pattern="b9 36 xx", name="HT Level"},
		{pattern="b9 39 xx", name="RS Level"},
		{pattern="b9 3c xx", name="HC Level"},
		{pattern="b9 3f xx", name="CH Level"},
		{pattern="b9 52 xx", name="OH Level"},
		{pattern="b9 55 xx", name="CC Level"},
		{pattern="b9 58 xx", name="RC Level"},
					
		{pattern="b9 14 xx", name="BD Tune"},
		{pattern="b9 19 xx", name="SD Tune"},
		{pattern="b9 2e xx", name="LT Tune"},
		{pattern="b9 31 xx", name="MT Tune"},
		{pattern="b9 34 xx", name="HT Tune"},
		{pattern="b9 37 xx", name="RS Tune"},
		{pattern="b9 3a xx", name="HC Tune"},
		{pattern="b9 3d xx", name="CH Tune"},
		{pattern="b9 50 xx", name="OH Tune"},
		{pattern="b9 53 xx", name="CC Tune"},
		{pattern="b9 56 xx", name="RC Tune"},
									
		{pattern="b9 17 xx", name="BD Decay"},
		{pattern="b9 1c xx", name="SD Decay"},
		{pattern="b9 2f xx", name="LT Decay"},
		{pattern="b9 32 xx", name="MT Decay"},
		{pattern="b9 35 xx", name="HT Decay"},
		{pattern="b9 38 xx", name="RS Decay"},
		{pattern="b9 3b xx", name="HC Decay"},
		{pattern="b9 3e xx", name="CH Decay"},
		{pattern="b9 51 xx", name="OH Decay"},
		{pattern="b9 54 xx", name="CC Decay"},
		{pattern="b9 57 xx", name="RC Decay"},
		
		{pattern="b9 16 xx", name="BD Comp"},
		{pattern="b9 1b xx", name="SD Comp"},

		{pattern="b9 15 xx", name="BD Attack"},
		{pattern="b9 1a xx", name="SD Snappy"},
		
		{pattern="b9 47 xx", name="Accent"},
		
		{pattern="b9 5b xx", name="Reverb Level"},
		{pattern="b9 59 xx", name="Reverb Time"},
		{pattern="b9 5a xx", name="Reverb Gate"},
		
		{pattern="b9 10 xx", name="Delay Level"},
		{pattern="b9 11 xx", name="Delay Time"},
		{pattern="b9 12 xx", name="Delay Feedback"},
		
		{pattern="b9 0c xx", name="External In Level"},
		{pattern="b9 0d xx", name="External In Side Chain"},
		
		{pattern="b9 09 xx", name="Shuffle"},

  		{pattern="<100x>? yy zz", name="Keyboard"},
  				

	}
	remote.define_auto_inputs(inputs)
	
  		local outputs={


		}
        

		remote.define_auto_outputs(outputs)      	
	
	
end


function remote_probe()

	local controlRequest="F0 7E 7F 06 01 F7"

	local controlResponse="F0 7E 00 06 02 47 6C 00 19 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? F7"
return {
		request=controlRequest,
		response=controlResponse
	}
end

