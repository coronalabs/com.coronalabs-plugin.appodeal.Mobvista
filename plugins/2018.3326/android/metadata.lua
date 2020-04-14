local metadata =
{
	plugin =
	{
		format = "jar",
		manifest =
		{
			applicationChildElements =
			{
					[[
                    
        <activity
            android:name="com.mintegral.msdk.activity.MTGCommonActivity"
            android:configChanges="keyboard|orientation"
            android:exported="true"
            android:screenOrientation="portrait"
            android:theme="@android:style/Theme.Translucent.NoTitleBar" />
        <receiver android:name="com.mintegral.msdk.click.AppReceiver">
            <intent-filter>
                <action android:name="android.intent.action.PACKAGE_ADDED" />
                <data android:scheme="package" />
            </intent-filter>
        </receiver>
        <service android:name="com.mintegral.msdk.shell.MTGService">
            <intent-filter>
                <action android:name="com.mintegral.msdk.download.action" />
            </intent-filter>
        </service>

        <activity
            android:name="com.mintegral.msdk.reward.player.MTGRewardVideoActivity"
            android:configChanges="orientation|keyboardHidden|screenSize"
            android:theme="@android:style/Theme.NoTitleBar.Fullscreen" />
        <activity
            android:name="com.mintegral.msdk.interstitial.view.MTGInterstitialActivity"
            android:configChanges="orientation|screenSize"
            android:screenOrientation="portrait" />


        <!-- FROM MANIFEST: -->
        <provider
            android:name="com.mintegral.msdk.base.utils.MTGFileProvider"
            android:authorities="@USER_ACTIVITY_PACKAGE@.mtgFileProvider"
            android:exported="false"
            android:grantUriPermissions="true">
            <meta-data
                android:name="android.support.FILE_PROVIDER_PATHS"
                android:resource="@xml/mtg_provider_paths" />
        </provider>


				]]
			}
		}
	},
}

return metadata