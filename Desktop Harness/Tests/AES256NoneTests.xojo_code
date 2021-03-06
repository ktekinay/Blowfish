#tag Class
Protected Class AES256NoneTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub EncryptCFBStreamTest()
		  dim key as string 
		  dim data as string 
		  dim expected as string 
		  dim encrypted as string
		  dim decrypted as string
		  dim e as AES_MTC
		  
		  key = Crypto.SHA256( "password" )
		  data = "12345678901234567890"
		  
		  dim dataSize as integer = data.LenB
		  Assert.Message "Data size = " + dataSize.ToString
		  
		  expected = "63DB6BCCAF6F7369B2C84694EB008E96AC99DA1D"
		  
		  e = GetAES( key )
		  
		  dim sw as new Stopwatch_MTC
		  
		  sw.Reset
		  sw.Start
		  for index as integer = 1 to data.LenB step e.BlockSize
		    encrypted = encrypted + e.EncryptCFB( data.MidB( index, e.BlockSize ), index >= ( data.LenB - e.BlockSize ) )
		  next
		  sw.Stop
		  Assert.Message "Encryption took " + sw.ElapsedMilliseconds.ToString + " ms"
		  Assert.AreEqual expected, EncodeHex( encrypted ), "Long encryption doesn't match"
		  sw.Reset
		  sw.Start
		  for index as integer = 1 to data.LenB step e.BlockSize
		    decrypted = decrypted + e.DecryptCFB( encrypted.MidB( index, e.BlockSize ), index >= ( data.LenB - e.BlockSize ) )
		  next
		  sw.Stop
		  Assert.Message "Decryption took " + sw.ElapsedMilliseconds.ToString + " ms"
		  Assert.AreEqual data, decrypted, "Long decryption doesn't match"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EncryptOFBStreamTest()
		  dim key as string 
		  dim data as string 
		  dim expected as string 
		  dim encrypted as string
		  dim decrypted as string
		  dim e as AES_MTC
		  
		  key = Crypto.SHA256( "password" )
		  data = "12345678901234567890"
		  
		  dim dataSize as integer = data.LenB
		  Assert.Message "Data size = " + dataSize.ToString
		  
		  expected = "63DB6BCCAF6F7369B2C84694EB008E96AF14E2AD"
		  
		  e = GetAES( key )
		  
		  dim sw as new Stopwatch_MTC
		  
		  sw.Reset
		  sw.Start
		  for index as integer = 1 to data.LenB step e.BlockSize
		    encrypted = encrypted + e.EncryptOFB( data.MidB( index, e.BlockSize ), index >= ( data.LenB - e.BlockSize ) )
		  next
		  sw.Stop
		  Assert.Message "Encryption took " + sw.ElapsedMilliseconds.ToString + " ms"
		  Assert.AreEqual expected, EncodeHex( encrypted ), "Long encryption doesn't match"
		  sw.Reset
		  sw.Start
		  for index as integer = 1 to data.LenB step e.BlockSize
		    decrypted = decrypted + e.DecryptOFB( encrypted.MidB( index, e.BlockSize ), index >= ( data.LenB - e.BlockSize ) )
		  next
		  sw.Stop
		  Assert.Message "Decryption took " + sw.ElapsedMilliseconds.ToString + " ms"
		  Assert.AreEqual data, decrypted, "Long decryption doesn't match"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetAES(key As String) As AES_MTC
		  return new AES_MTC( key, AES_MTC.EncryptionBits.Bits256, AES_MTC.Padding.None )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitializeTest()
		  dim e as AES_MTC = GetAES( "password" )
		  Assert.IsNotNil e
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NotImplementedCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
