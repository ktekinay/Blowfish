#tag Class
Protected Class DesktopTestController
Inherits TestController
	#tag Event
		Sub InitializeTestGroups()
		  // Instantiate TestGroup subclasses here so that they can be run
		  
		  Dim group As TestGroup
		  
		  'group = New XojoUnitTests(Self, "Assertion")
		  'group = New XojoUnitFailTests(Self, "Always Fail")
		  
		  group = new AES128NullsTests( self, "AES-128-Nulls" )
		  group = new AES128NullsWithCountTests( self, "AES-128-NullsWithCount" )
		  group = new AES128PKCSTests( self, "AES-128-PKCS" )
		  group = new AES256NullsTests( self, "AES-256-Nulls" )
		  group = new AES256PKCSTests( self, "AES-256-PKCS" )
		  
		  group = new BcryptTests( self, "Bcrypt" )
		  group = new BlowfishPKCS5Tests( self, "Blowfish-PKCS" )
		  
		  group = new EncrypterTests( self, "Encrypter" )
		  
		  group = new M_CryptoTests( self, "M_Crypto" )
		  
		  group = new ScryptTests( self, "Scrypt" )
		  
		  group = new SHA256DigestTest( self, "SHA256Digest" )
		  group = new SHA512DigestTest( self, "SHA512Digest" )
		  
		  group = new StressTests( self, "Stress Tests" )
		  group.IncludeGroup = false
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GroupCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NotImplementedCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunGroupCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
