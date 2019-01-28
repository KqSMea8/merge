.class public Lc8/Wx;
.super Ljava/lang/Object;
.source "AtlasBundleInfoGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBundleInfo()Landroid/taobao/atlas/bundleInfo/BundleListing;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .local v1, "bundleInfos":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    new-instance v4, Landroid/taobao/atlas/bundleInfo/BundleListing;

    invoke-direct {v4}, Landroid/taobao/atlas/bundleInfo/BundleListing;-><init>()V

    .line 23
    .local v4, "listing":Landroid/taobao/atlas/bundleInfo/BundleListing;
    iput-object v1, v4, Landroid/taobao/atlas/bundleInfo/BundleListing;->bundles:Ljava/util/LinkedHashMap;

    .line 24
    new-instance v3, Lc8/Yx;

    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 25
    .local v3, "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v7, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v6, "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v5, "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 30
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 31
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 34
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 35
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 36
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 37
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 38
    const-string/jumbo v8, "ux6ebw90n6ck"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 39
    const-string/jumbo v8, "com.android.update"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 40
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 41
    const-string/jumbo v8, "com.taobao.update.UpdateApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 42
    const-string/jumbo v8, "com.taobao.update.lightapk.storagespace.SpaceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v8, "com.taobao.update.lightapk.BundleNotFoundActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v8, "com.taobao.test.UpdateSettingsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v8, "com.taobao.atlas.dexmerge.DexMergeService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v8, "com.taobao.update.test.DynamicTestService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v8, "com.taobao.update.LocalTestBroadcastReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v8, "com.taobao.atlas.update.AwoPatchReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v8, "com.taobao.update.bundle.BundleInstalledExitAppReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v8, "com.taobao.update.test.DynamicTestReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v8, "com.taobao.update.test.MutiDynamicTestReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v8, "com.taobao.update.test.AndFixTestReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v8, "com.taobao.update.test.ApkTestReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 56
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 58
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 65
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 66
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 67
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 68
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 69
    const-string/jumbo v8, "3tr4gda07zuho"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 70
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 71
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 72
    const-string/jumbo v8, "com.youku.phone.commonbundle.CommonBundleApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 73
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.MonitorService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.WakeupService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.TempService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v8, "com.tmall.concrete.SafeModeService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.receiver.NetWorkChangeReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.receiver.ShutDownReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.receiver.WakeUpReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v8, "cn.com.iresearch.phonemonitor.library.receiver.ApplicationStatusReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v8, "com.youku.phone.commonbundle.hack.DummyProvider"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 84
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 86
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 87
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 88
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 89
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 90
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 93
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 94
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 95
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 96
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 97
    const-string/jumbo v8, "1jdm7nwsxvo2"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 98
    const-string/jumbo v8, "com.youku.detail"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 99
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 100
    const-string/jumbo v8, "com.youku.ui.activity.DetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v8, "com.youku.ui.activity.UCPlayerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v8, "com.youku.phone.vip.activity.VipProductActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v8, "com.youku.videodownload.ui"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string/jumbo v8, "com.youku.phone.stagephoto"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string/jumbo v8, "com.youku.comment.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v8, "com.youku.phone.child"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v8, "com.youku.multiscreen.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v8, "com.youku.danmaku.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string/jumbo v8, "com.youku.ppsdk.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 116
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 118
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 119
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 121
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 122
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 125
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 126
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 127
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 128
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 129
    const-string/jumbo v8, "2n55mvegpykyq"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 130
    const-string/jumbo v8, "com.youku.comment.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 131
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 132
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.InteractsdkMainActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImageChoiceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImageCaptrueActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImageCropActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImageFilterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImageMultiActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.activity.ImagePreviewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommentMsgWebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v8, "com.youku.commentsdk.activity.PostsDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v8, "com.youku.commentsdk.activity.ReplyFullActivityNew"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommentDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v8, "com.youku.commentsdk.activity.GalleryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v8, "com.youku.commentsdk.activity.FSSendCommentActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommonWebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommentSearchActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommonNoTitleActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v8, "com.youku.commentsdk.activity.CommentListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.service.PublishCoreService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v8, "com.taobao.socialplatformsdk.publish.service.PublishCoreService$NotificationService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 154
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 156
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 158
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 159
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 160
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 163
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 164
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 165
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 166
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 167
    const-string/jumbo v8, "14xlq5ounm00g"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 168
    const-string/jumbo v8, "com.youku.danmaku.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 169
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 170
    const-string/jumbo v8, "com.youku.danmaku.YoukuDanmakuApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 171
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 174
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 176
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 177
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 178
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 180
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 183
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 184
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 185
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 186
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 187
    const-string/jumbo v8, "2mid4dhp7mp2y"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 188
    const-string/jumbo v8, "com.youku.ad.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 189
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 190
    const-string/jumbo v8, "com.youku.ad.container.AdApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 191
    const-string/jumbo v8, "com.youku.ppsdk.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 194
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 196
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 197
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 198
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 199
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 200
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 203
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 204
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 205
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 206
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 207
    const-string/jumbo v8, "1is25w3lv5afk"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 208
    const-string/jumbo v8, "com.youku.android.player.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 209
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 210
    const-string/jumbo v8, "com.youku.player.container.PlayerContainer"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 211
    const-string/jumbo v8, "com.alibaba.imagesearch.ui.PailitaoActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v8, "com.alibaba.imagesearch.ui.SearchResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v8, "com.youdo.view.DisplayWebView"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v8, "com.youdo.view.Browser"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v8, "com.youku.player.weibo.YoukuWeiboPlayerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v8, "com.youku.player.ad.AdWebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v8, "com.edge.pcdn.PcdnVodService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string/jumbo v8, "com.youku.multiscreen.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string/jumbo v8, "com.youku.danmaku.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string/jumbo v8, "com.webviewui"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    const-string/jumbo v8, "com.youku.ppsdk.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 226
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 228
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 229
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 230
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 231
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 232
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 235
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 236
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 237
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 238
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 239
    const-string/jumbo v8, "14rnq13iwnylj"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 240
    const-string/jumbo v8, "com.youku.multiscreen.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 241
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 242
    const-string/jumbo v8, "com.yunos.tvhelper.ui.rc.main.activity.RcGroupActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v8, "com.yunos.tvhelper.ui.trunk.activities.TipsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v8, "com.yunos.tvhelper.ui.trunk.activities.DebugActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v8, "com.yunos.youku.multiscreen.YkMultiscreenStartupReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 248
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 250
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 251
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 252
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 253
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 254
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 257
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 258
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 259
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 260
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 261
    const-string/jumbo v8, "1k6y0tvffh9jk"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 262
    const-string/jumbo v8, "com.youku.share.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 263
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 264
    const-string/jumbo v8, "com.youku.share.ShareApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 265
    const-string/jumbo v8, "com.youku.share.sdk.test.TestShareInterfaceMainActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string/jumbo v8, "com.youku.share.sdk.test.TestAutoShareInterfaceMainActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v8, "com.youku.phone.apshare.ShareEntryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v8, "com.youku.phone.ddshare.DDShareActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v8, "com.youku.share.activity.QqShareCallbackActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v8, "com.youku.share.activity.QzoneShareCallbackActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v8, "com.youku.share.activity.WeiboShareCallbackActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v8, "com.youku.share.activity.ShareAntiShieldActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 275
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 277
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 278
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 279
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 280
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 281
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 284
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 285
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 286
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 287
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 288
    const-string/jumbo v8, "28llitkpjk3b3"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 289
    const-string/jumbo v8, "com.youku.videodownload.ui"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 290
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 291
    const-string/jumbo v8, "com.youku.ui.activity.DownloadPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string/jumbo v8, "com.youku.ui.activity.download.CacheSeriesActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v8, "com.youku.ui.activity.DownloadedCleanActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v8, "com.youku.service.download.api.ProgressUpdater"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v8, "com.youku.service.download.DownloadService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v8, "com.youku.service.download.DownloadEventConsumeService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v8, "com.youku.service.download.DownloadReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v8, "com.youku.service.download.receiver.DownloadEventReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v8, "com.youku.service.download.provider.VideoCacheProvider"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const-string/jumbo v8, "com.youku.danmaku.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 306
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 308
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 309
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 310
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 311
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 312
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 315
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 316
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 317
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 318
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 319
    const-string/jumbo v8, "33lxkjibgedth"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 320
    const-string/jumbo v8, "com.youku.phone.homecms"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 321
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 322
    const-string/jumbo v8, "com.youku.HomePageApplicaton"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 323
    const-string/jumbo v8, "com.youku.HomePageEntry"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v8, "com.youku.phone.homecms.page.activity.HomeMovieRankActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string/jumbo v8, "com.youku.phone.homecms.page.activity.HomeSecondLevelActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v8, "com.youku.phone.homecms.page.activity.FeatureActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v8, "com.youku.interactiontab.Activity.InteractionTabImagePagerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v8, "com.youku.interactiontab.Activity.InteractionTabPageDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v8, "com.youku.livechannel.FragmentLiveActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v8, "com.youku.channelpage.page.activity.ChannelPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v8, "com.youku.channelpage.page.activity.HomeSCGListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v8, "com.youku.channelpage.page.activity.ChannelMovieRankActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v8, "com.youku.channelpage.specialtopic.SpecialTopicActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v8, "com.youku.channelpage.page.activity.ChannelListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v8, "com.youku.channelpage.page.activity.ChannelFashionListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v8, "com.youku.channelpage.page.activity.ChannelFashionTopicPlayActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string/jumbo v8, "com.youku.phone.homecms.utils.HomeCMSAidlServiceS"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string/jumbo v8, "com.youku.phone.homecms.utils.MessageAidlService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string/jumbo v8, "com.youku.phone.cmscontainer"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string/jumbo v8, "com.youku.phone.sportschannel"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 348
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 349
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 350
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 351
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 352
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 353
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 354
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 357
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 358
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 359
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 360
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 361
    const-string/jumbo v8, "3l2dpc8c77syx"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 362
    const-string/jumbo v8, "com.youku.phone.cmscontainer"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 363
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 364
    const-string/jumbo v8, "com.youku.phone.cmscomponent.weex.WXPageActivityHomePage"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v8, "com.youku.phone.cmscomponent.weex.WXPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v8, "com.youku.phone.cmscomponent.activity.placeholder.StandardActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string/jumbo v8, "com.youku.phone.cmscomponent.activity.placeholder.SingleInstanceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v8, "com.youku.phone.cmscomponent.activity.placeholder.SingleTaskActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v8, "com.youku.phone.cmscomponent.activity.placeholder.SingleTopActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string/jumbo v8, "com.youku.phone.cmscomponent.utils.CheckInNavIntentService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string/jumbo v8, "com.youku.phone.child"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string/jumbo v8, "com.youku.multiscreen.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 380
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 382
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 383
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 384
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 385
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 386
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 389
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 390
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 391
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 392
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 393
    const-string/jumbo v8, "247u18m4gg0uk"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 394
    const-string/jumbo v8, "com.youku.phone.sportschannel"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 395
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 396
    const-string/jumbo v8, "com.alisports.youku.ui.activity.HotRecommendActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v8, "com.alisports.youku.ui.activity.ChannelDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v8, "com.alisports.youku.ui.activity.SportsWebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string/jumbo v8, "com.alisports.youku.ui.activity.ImageListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 402
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 404
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 405
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 406
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 407
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 408
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 409
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 411
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 412
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 413
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 414
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 415
    const-string/jumbo v8, "126uom60ifcz0"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 416
    const-string/jumbo v8, "com.webviewui"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 417
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 418
    const-string/jumbo v8, "com.youku.ui.activity.WebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v8, "com.youku.ui.activity.WVWebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v8, "cmb.pb.cmbsafe.CmbService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 424
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 426
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 427
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 428
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 429
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 430
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 431
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 433
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 434
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 435
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 436
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 437
    const-string/jumbo v8, "1yjnvmt8s5mhg"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 438
    const-string/jumbo v8, "com.youku.android.youkusetting"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 439
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 440
    const-string/jumbo v8, "com.youku.android.youkusetting.activity.SettingsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v8, "com.youku.android.youkusetting.activity.AccountManagerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v8, "com.youku.android.youkusetting.activity.AccountBindSuccessActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 447
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 448
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 449
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 450
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 451
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 452
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 453
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 456
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 457
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 458
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 459
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 460
    const-string/jumbo v8, "2hvwawpfjdzlj"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 461
    const-string/jumbo v8, "com.youku.android.collection"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 462
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 463
    const-string/jumbo v8, "com.youku.android.collection.activity.FavoritePageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v8, "com.youku.android.collection.activity.UpdateCollectionActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v8, "com.youku.android.collection.activity.CreateCollectionActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v8, "com.youku.android.collection.activity.EmptyCollectionActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v8, "com.youku.android.collection.activity.ExploreCollectionsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string/jumbo v8, "com.youku.android.collection.activity.MyCollectionsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string/jumbo v8, "com.youku.android.collection.activity.CollectionActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 475
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 476
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 477
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 478
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 479
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 480
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 481
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 482
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 484
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 485
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 486
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 487
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 488
    const-string/jumbo v8, "w3aiidlc1969"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 489
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 490
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 491
    const-string/jumbo v8, "com.youku.android.youkuhistory.activity.HistoryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 496
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 497
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 498
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 499
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 500
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 501
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 502
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 505
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 506
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 507
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 508
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 509
    const-string/jumbo v8, "2y9baf8nc1klx"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 510
    const-string/jumbo v8, "com.youku.shortvideo"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 511
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 512
    const-string/jumbo v8, "com.youku.shortvideo.presentation.sub.play.ShortVideoPlayActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string/jumbo v8, "com.youku.shortvideo.presentation.TestActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string/jumbo v8, "com.youku.shortvideo.presentation.sub.comment.CommentListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string/jumbo v8, "com.youku.shortvideo.presentation.sub.worth.WorthListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string/jumbo v8, "com.youku.shortvideo.presentation.sub.shows.ShowsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string/jumbo v8, "com.youku.shortvideo.presentation.sub.worthdetail.WorthDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string/jumbo v8, "com.youku.phone.cmscontainer"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    const-string/jumbo v8, "com.android.update"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 525
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 527
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 528
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 529
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 530
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 531
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 534
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 535
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 536
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 537
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 538
    const-string/jumbo v8, "wupqmc4gmwh9"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 539
    const-string/jumbo v8, "com.youku.hotspot"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 540
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 541
    const-string/jumbo v8, "com.youku.hotspot.HotSpotApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 542
    const-string/jumbo v8, "com.youku.hotspot.activity.HotSpotActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string/jumbo v8, "com.youku.hotspot.activity.HotSpotNavActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v8, "com.youku.phone.aidl.HotSpotAidlServices"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string/jumbo v8, "com.amap.api.location.APSService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v8, "com.youku.hotspot.PreloadReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 554
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 556
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 557
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 558
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 559
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 560
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 561
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 563
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 564
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 565
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 566
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 567
    const-string/jumbo v8, "2ysykvvo2vilp"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 568
    const-string/jumbo v8, "com.youku.hd.subscribe"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 569
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 570
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.HdSubscribeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.SubscribeMainActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.SubscribeGuideActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.FollowActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.MySubscribeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.SeriesActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string/jumbo v8, "com.youku.hd.subscribe.ui.CacheActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 581
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 582
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 583
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 584
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 585
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 586
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 587
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 588
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 590
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 591
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 592
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 593
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 594
    const-string/jumbo v8, "2rudjgmhddc02"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 595
    const-string/jumbo v8, "com.youku.usercenter.passport"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 596
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 597
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.LoginActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.RegisterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.AuthActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.YKAuthActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.MiscActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v8, "com.youku.usercenter.passport.activity.LoadingActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string/jumbo v8, "com.tencent.connect.common.AssistActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v8, "com.alipay.sdk.app.H5AuthActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v8, "com.youku.usercenter.passport.remote.PassportService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 608
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 609
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 610
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 611
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 612
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 613
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 614
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 615
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 617
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 618
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 619
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 620
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 621
    const-string/jumbo v8, "3mg8m0hy2rb4i"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 622
    const-string/jumbo v8, "com.youku.saosao"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 623
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 624
    const-string/jumbo v8, "com.youku.saosao.activity.CaptureActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v8, "com.youku.saosao.activity.CaptureResultAcitvity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 628
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 629
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 630
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 631
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 632
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 633
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 634
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 635
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 637
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 638
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 639
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 640
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 641
    const-string/jumbo v8, "3hk3s4frdq5lw"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 642
    const-string/jumbo v8, "com.youku.livesdk"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 643
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 644
    const-string/jumbo v8, "com.youku.livesdk.LiveSDKApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 645
    const-string/jumbo v8, "com.youku.livesdk.LiveListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string/jumbo v8, "com.youku.livesdk.LivePlayActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v8, "com.youku.livesdk.LiveSubscribeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v8, "com.youku.livesdk.AutoCheckActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string/jumbo v8, "com.youku.livesdk.LiveBindPhoneActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v8, "com.youku.livesdk.LiveBrandPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string/jumbo v8, "com.alibaba.live.interact.LiveInteractTestActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string/jumbo v8, "com.youku.livesdk.LiveWeexActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string/jumbo v8, "com.taobao.tao.powermsg.outter.PowerMsg4WXService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string/jumbo v8, "com.youku.livesdk.player.common.gift.RechargeBroadCast"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v8, "com.taobao.tao.powermsg.PowerMsgReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    const-string/jumbo v8, "com.youku.multiscreen.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 662
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 663
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 664
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 665
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 666
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 667
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 668
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 671
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 672
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 673
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 674
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 675
    const-string/jumbo v8, "2e5iqnya4vyay"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 676
    const-string/jumbo v8, "com.youku.userchannel"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 677
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 678
    const-string/jumbo v8, "com.youku.userchannel.ShowUserChannel"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v8, "com.youku.userchannel.UserChannelSearchActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v8, "com.youku.userchannel.service.UserChannelAIDLService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 684
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 686
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 687
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 688
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 689
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 690
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 693
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 694
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 695
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 696
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 697
    const-string/jumbo v8, "1uhp51nsdmxp6"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 698
    const-string/jumbo v8, "com.youku.rowtable"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 699
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 700
    const-string/jumbo v8, "com.youku.rowtable.activity.RowTableActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 704
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 705
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 706
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 707
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 708
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 709
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 710
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 711
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 713
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 714
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 715
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 716
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 717
    const-string/jumbo v8, "27p8bmuixnn4l"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 718
    const-string/jumbo v8, "com.youku.vip"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 719
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 720
    const-string/jumbo v8, "com.youku.vip.app.VipApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 721
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipDefaultWeexActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipAliweexActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string/jumbo v8, "com.youku.vip.ui.activity.SelectPayChannelActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipProductPayActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipCardActivatedActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipPayResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipMyReserveActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v8, "com.youku.vip.wrapper.VipHomeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipHotRankActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipVideoHallListNewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipMemberCenterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipFilterNoMenuActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipFilterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipPeopleFaceNewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipInterestingCubeNewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipGoodReputationNewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipSubChannelActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipCmsSubChannelActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipThemeCardPackageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipThemeCardDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipARScanActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipActivitiesVenueActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string/jumbo v8, "com.youku.vip.ui.activity.backup.VipBackupAActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v8, "com.youku.vip.ui.activity.backup.VipBackupBActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo v8, "com.youku.vip.ui.activity.VipTabFilterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v8, "com.youku.vip.service.VipBindService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string/jumbo v8, "com.youku.vip.service.VipDownloadImageService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string/jumbo v8, "com.youku.vip.service.AccsReceiverService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string/jumbo v8, "com.youku.vip.receiver.VipUserInfoChangeReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string/jumbo v8, "com.youku.phone.cmscontainer"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 756
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 757
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 758
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 759
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 760
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 761
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 762
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 763
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 765
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 766
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 767
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 768
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 769
    const-string/jumbo v8, "2zn76y3zqy74w"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 770
    const-string/jumbo v8, "com.youku.theshow"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 771
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 772
    const-string/jumbo v8, "com.youku.theshow.ShowRankApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 773
    const-string/jumbo v8, "com.youku.theshow.activity.TheShowRankActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v8, "com.youku.theshow.activity.TheShowHistoryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string/jumbo v8, "com.youku.theshow.activity.TheShowRuleActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 778
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 779
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 780
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 781
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 782
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 783
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 784
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 785
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 787
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 788
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 789
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 790
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 791
    const-string/jumbo v8, "3pcado1xek50m"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 792
    const-string/jumbo v8, "com.youku.phone.child"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 793
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 794
    const-string/jumbo v8, "com.youku.phone.child.star.StarDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string/jumbo v8, "com.youku.phone.child.filter.ChildFilterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v8, "com.youku.phone.child.brand.BrandActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v8, "com.youku.phone.child.bought.BoughtActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string/jumbo v8, "com.youku.phone.cmscontainer"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 802
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 803
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 804
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 805
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 806
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 807
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 808
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 809
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 811
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 812
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 813
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 814
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 815
    const-string/jumbo v8, "294vahmo76v74"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 816
    const-string/jumbo v8, "com.soku.searchsdk"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 817
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 818
    const-string/jumbo v8, "com.soku.searchsdk.SokuApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 819
    const-string/jumbo v8, "com.soku.searchsdk.activity.SearchResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v8, "com.soku.searchsdk.activity.SearchActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v8, "com.soku.searchsdk.activity.PersonDirectMoreActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string/jumbo v8, "com.soku.searchsdk.activity.ProgramBigWordMoreActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string/jumbo v8, "com.soku.searchsdk.activity.DataDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string/jumbo v8, "com.soku.searchsdk.activity.UgcBigWordActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v8, "com.soku.searchsdk.activity.CacheAct"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v8, "com.soku.searchsdk.activity.RankAct"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string/jumbo v8, "com.soku.searchsdk.activity.LovelyDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string/jumbo v8, "com.soku.searchsdk.activity.SeriesActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string/jumbo v8, "com.youku.detail"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 833
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 834
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 835
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 836
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 837
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 838
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 839
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 840
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 842
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 843
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 844
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 845
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 846
    const-string/jumbo v8, "1m1n65rq5hyg7"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 847
    const-string/jumbo v8, "com.youku.usercenter"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 848
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 849
    const-string/jumbo v8, "com.youku.usercenter.UserCenterApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 850
    const-string/jumbo v8, "com.youku.usercenter.activity.EditProfileActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string/jumbo v8, "com.youku.usercenter.activity.UserProfileActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string/jumbo v8, "com.youku.usercenter.activity.UserCenterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v8, "com.youku.user.activity.FeedBackActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v8, "com.youku.messagecenter.activity.MessageCenterActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v8, "com.youku.messagecenter.activity.MessageSettingActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string/jumbo v8, "com.youku.usercenter.service.aidl.UserCenterManagerService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string/jumbo v8, "com.youku.user.receiver.PreloadReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    const-string/jumbo v8, "com.youku.android.youkuhistory"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 863
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 864
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 865
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 866
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 867
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 868
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 869
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 870
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 872
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 873
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 874
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 875
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 876
    const-string/jumbo v8, "3gd8qcx67pdxz"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 877
    const-string/jumbo v8, "com.youku.upload"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 878
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 879
    const-string/jumbo v8, "com.youku.upload.activity.MyUploadPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string/jumbo v8, "com.youku.upload.activity.MyUploadVideoPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string/jumbo v8, "com.youku.upload.activity.VideoPickerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string/jumbo v8, "com.youku.upload.activity.VideoEditActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v8, "com.youku.upload.activity.ChooseCustomCoverActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v8, "com.youku.upload.activity.MyUploadFailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v8, "com.youku.upload.activity.CreateVideoFolderActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v8, "com.youku.upload.activity.AlbumDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v8, "com.youku.upload.activity.ChooseCoverActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string/jumbo v8, "com.youku.upload.activity.VideoFolderDialogActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string/jumbo v8, "com.youku.upload.activity.VideoSourceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string/jumbo v8, "com.youku.upload.activity.ChooseTopicActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v8, "com.youku.upload.service.UploadManagerAIDLService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 896
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 897
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 898
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 899
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 900
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 901
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 902
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 903
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 904
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 905
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 906
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 907
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 908
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 909
    const-string/jumbo v8, "12rsxb290c1kk"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 910
    const-string/jumbo v8, "com.youku.phone.videoeditor"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 911
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 912
    const-string/jumbo v8, "com.youku.phone.videoeditor.VideoEditorApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 913
    const-string/jumbo v8, "com.youku.phone.videoeditor.activity.FanShareVideoActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v8, "com.youku.phone.videoeditor.activity.VideoRecordActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string/jumbo v8, "com.youku.phone.videoeditor.share.ChoosePlanetActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v8, "com.youku.phone.videoeditor.record.download.core.DownloadService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 921
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 922
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 923
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 924
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 925
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 926
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 927
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 928
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 930
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 931
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 932
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 933
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 934
    const-string/jumbo v8, "1tmoxlmq2wcoo"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 935
    const-string/jumbo v8, "com.youku.playfun"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 936
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 937
    const-string/jumbo v8, "com.youku.playfun.YoukuPlayFunApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 938
    const-string/jumbo v8, "com.youku.playfun.activity.PlayFunActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v8, "com.youku.playfun.activity.FullScreenPlayerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string/jumbo v8, "com.youku.playfun.activity.MaterialListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string/jumbo v8, "com.youku.playfun.activity.PlayEventDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string/jumbo v8, "com.youku.playfun.activity.MaterialDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string/jumbo v8, "com.youku.playfun.activity.MyPlayWorksActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v8, "com.youku.playfun.activity.PlayTypeChooseActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v8, "com.youku.playfun.activity.PlayFunActiveListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v8, "com.youku.playfun.weex.PlayFunWeexPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    const-string/jumbo v8, "com.youku.phone.videoeditor"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 955
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 956
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 957
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 958
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 959
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 960
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 961
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 962
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 964
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 965
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 966
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 967
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 968
    const-string/jumbo v8, "3w36358rsszyy"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 969
    const-string/jumbo v8, "com.youku.phone.ykuserhomepage"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 970
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 971
    const-string/jumbo v8, "com.youku.phone.ykuserhomepage.YKUserHomepageApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 972
    const-string/jumbo v8, "com.youku.phone.ykuserhomepage.activity.UserHomePageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 979
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 980
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 981
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 982
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 983
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 984
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 985
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 986
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 988
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 989
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 990
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 991
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 992
    const-string/jumbo v8, "3qy21q8g3r8qm"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 993
    const-string/jumbo v8, "com.youku.phone.stagephoto"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 994
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 995
    const-string/jumbo v8, "com.youku.phone.stagephoto.StagePhotoSDKApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 996
    const-string/jumbo v8, "com.youku.phone.stagephoto.StagePhotoActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1001
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1002
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1003
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1004
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1005
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1006
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1007
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1008
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1010
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1011
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1012
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1013
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1014
    const-string/jumbo v8, "2mcqjn5kkkcfc"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1015
    const-string/jumbo v8, "com.youku.planet.framework"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1016
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1017
    const-string/jumbo v8, "com.youku.planet.framework.PlanetFrameworkApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1018
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1020
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1021
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1022
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1023
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1024
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1025
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1026
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1027
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1029
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1030
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1031
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1032
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1033
    const-string/jumbo v8, "2cc5ah5b7p2s7"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1034
    const-string/jumbo v8, "com.youku.fan.share"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1035
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 1036
    const-string/jumbo v8, "com.youku.fan.share.FanShareApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1037
    const-string/jumbo v8, "com.youku.fan.share.activity.FanShareActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string/jumbo v8, "com.youku.fan.share.activity.ShareResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string/jumbo v8, "com.youku.fan.share.activity.FanShareEmptyActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1043
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1044
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1045
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1046
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1047
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1048
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1049
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1050
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1052
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1053
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1054
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1055
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1056
    const-string/jumbo v8, "359gh00emuxrd"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1057
    const-string/jumbo v8, "com.youku.phone.editor"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1058
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1059
    const-string/jumbo v8, "com.youku.phone.editor.ImageEditorSDKApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1060
    const-string/jumbo v8, "com.youku.phone.editor.image.activity.ImageEditorActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v8, "com.youku.phone.editor.gif.activity.GifEditorActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string/jumbo v8, "com.youku.phone.editor.share.ImageShareActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1068
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1069
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1070
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1071
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1072
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1073
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1074
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1075
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1077
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1078
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1079
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1080
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1081
    const-string/jumbo v8, "2t5083v1uck20"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1082
    const-string/jumbo v8, "com.youku.planet.community"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1083
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1084
    const-string/jumbo v8, "com.youku.planet.PlanetApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1085
    const-string/jumbo v8, "com.youku.ui.demo.DemoEntryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string/jumbo v8, "com.youku.ui.demo.MonkeyActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string/jumbo v8, "com.youku.planet.bizs.home.activity.PlanetHomeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string/jumbo v8, "com.youku.planet.bizs.home.activity.MyCommunityActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string/jumbo v8, "com.youku.planet.bizs.home.activity.MyFollowedCommunityActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string/jumbo v8, "com.youku.ui.demo.list.RecyclerViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    const-string/jumbo v8, "com.youku.ui.demo.list.LoadDataListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo v8, "com.youku.ui.demo.nuwa.NuwaLoadDataListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string/jumbo v8, "com.youku.ui.demo.uikit.UikitTestActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string/jumbo v8, "com.youku.ui.demo.autoplay.VideoListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string/jumbo v8, "com.youku.uiframework.WrapFragmentActionBarActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    const-string/jumbo v8, "com.youku.uiframework.WrapFragmentActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.BlacklistActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.ApplyDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.ManagerGroupListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.PendingApproveListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.FandomSettingActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    const-string/jumbo v8, "com.youku.ui.demo.photoselect.PhotoSelectTestActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    const-string/jumbo v8, "com.youku.ui.demo.audio.AudioTestActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.ForbidTalkActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string/jumbo v8, "com.youku.planet.bizs.topic.presentation.view.activity.TopicDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    const-string/jumbo v8, "com.youku.planet.bizs.topic.presentation.view.activity.TopicCreateActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    const-string/jumbo v8, "com.youku.planet.bizs.topic.presentation.view.activity.PostTopicEntryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const-string/jumbo v8, "com.youku.ui.demo.TestPublishActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.postmix.presentation.view.ImagePostEditActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string/jumbo v8, "com.youku.planet.bizs.sign.presentation.view.activity.SignInActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.postimage.presentation.view.ImagePostDelegateActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string/jumbo v8, "com.youku.planet.cmps.videoselector.activity.VideoSelectorActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.video.presentation.view.VideoRecordActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.vote.view.VoteEditEntryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.entrance.view.PublishEntranceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.CardEditActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string/jumbo v8, "com.youku.planet.bizs.web.PlanetWvWebActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.FandomSigninPreviewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string/jumbo v8, "com.youku.planet.bizs.manager.presentation.view.activity.FansCommunityMembersActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v8, "com.youku.planet.bizs.fandom.actor.ActorHomePageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string/jumbo v8, "com.youku.planet.bizs.fandom.greeting.ActorGreetingageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string/jumbo v8, "com.youku.planet.bizs.fandom.image.view.activity.ArtistImageListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.postdetail.detail.presentation.view.PostDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.entrance.view.InviteActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.postdetail.reply.presentation.view.PostReplyDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string/jumbo v8, "com.youku.planet.bizs.starcomming.StarComingActivityV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string/jumbo v8, "com.youku.planet.bizs.starcomming.StarBarrageDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string/jumbo v8, "com.youku.ui.demo.UploadActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string/jumbo v8, "com.youku.planet.bizs.starcoming.list.StarCommingListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    const-string/jumbo v8, "com.youku.planet.bizs.fandom.ip.IPHomePageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string/jumbo v8, "com.youku.planet.bizs.fandomlist.MoreFandomListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string/jumbo v8, "com.youku.planet.bizs.topiclist.MoreTopicListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string/jumbo v8, "com.youku.planet.bizs.video.presentation.VideoRecommendListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string/jumbo v8, "com.youku.planet.bizs.search.presentation.view.activity.PlanetSearchActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string/jumbo v8, "com.youku.planet.bizs.search.presentation.view.activity.PlanetSearchResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.postmix.presentation.view.MixedPostReeditActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string/jumbo v8, "com.youku.planet.cmps.postpublish.publish.vote.view.VoteReeditEntryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string/jumbo v8, "com.youku.planet.bizs.dynamic.presentation.view.DynamicDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string/jumbo v8, "com.youku.ui.demo.weex.PlanetWeexDebugActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string/jumbo v8, "com.youku.planet.weex.PlanetAliWeexActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string/jumbo v8, "com.youku.planet.weex.sdk.PlanetWeexActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string/jumbo v8, "com.ali.music.multiimageselector.MultiSelectorActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string/jumbo v8, "com.ali.music.multiimageselector.MultiImagePreviewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string/jumbo v8, "com.ali.music.multiimageselector.StarImagePreviewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string/jumbo v8, "com.youku.planet.common.service.AccsReceiverService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string/jumbo v8, "com.youku.planet.weex.PlanetAliWeexService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    const-string/jumbo v8, "com.youku.planet.PreloadReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    const-string/jumbo v8, "com.youku.planet.framework"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1154
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1155
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1156
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1157
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1158
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1159
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1160
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1161
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1163
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1164
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1165
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1166
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1167
    const-string/jumbo v8, "qft78nmargt"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1168
    const-string/jumbo v8, "com.youku.planet.upload"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1169
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1170
    const-string/jumbo v8, "com.youku.planet.upload.PlanetUploadApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1171
    const-string/jumbo v8, "com.youku.planet.upload.PlanetUploadService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1174
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1175
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1176
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1177
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1178
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1179
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1180
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1181
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1183
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1184
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1185
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1186
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1187
    const-string/jumbo v8, "1qffmp1j72961"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1188
    const-string/jumbo v8, "com.youku.laifeng.sdk"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1189
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1190
    const-string/jumbo v8, "com.youku.laifeng.sdk.LaifengSdkSchemeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string/jumbo v8, "com.youku.laifeng.sdk.home.LFHomeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string/jumbo v8, "com.youku.laifeng.lib.roomwidgets.report.activity.RoomReportActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string/jumbo v8, "com.youku.laifeng.lib.gift.redpacket.activity.LuckMoneyPacketActivity4ViewerV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string/jumbo v8, "com.youku.laifeng.lib.gift.redpacket.activity.LuckMoneyPacketActivityV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v8, "com.youku.laifeng.lib.gift.redpacket.activity.RedPacketRecordActivity4ViewerV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v8, "com.youku.laifeng.lib.gift.redpacket.activity.RedPacketRecordActivityV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    const-string/jumbo v8, "com.youku.laifeng.lib.gift.redpacket.activity.SendRedPacketActivityV3"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string/jumbo v8, "com.youku.laifeng.sdk.web.PopConsumeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string/jumbo v8, "com.youku.laifeng.sdk.report.ReportActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string/jumbo v8, "com.youku.laifeng.module.webview.WebViewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string/jumbo v8, "com.youku.laifeng.module.room.livehouse.activity.ActorLiveHouseActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    const-string/jumbo v8, "com.youku.laifeng.module.room.livehouse.activity.ViewerLiveHouseActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string/jumbo v8, "com.youku.laifeng.module.room.livehouse.more.ranklist.buyguard.BuyGuardActivityV2"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string/jumbo v8, "com.youku.laifeng.module.room.livehouse.widget.sopcast.advancehelper.SopcastAdvanceHelperActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string/jumbo v8, "com.youku.laifeng.module.room.multibroadcast.activity.MultiBroadcastActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string/jumbo v8, "com.youku.laifeng.module.room.livehouse.activity.ImageSelectorActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string/jumbo v8, "com.youku.laifeng.usercard.live.portrait.activity.NewUserCardActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    const-string/jumbo v8, "com.youku.laifeng.module.ugc.attention.activity.LobbyAttentionReplayListActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    const-string/jumbo v8, "com.youku.laifeng.module.ugc.attention.activity.MyAllPublicNumberAttentionActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string/jumbo v8, "com.youku.laifeng.ugc.activity.FanWallImagePagerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string/jumbo v8, "com.youku.laifeng.ugc.activity.DynamicWallDetailV2ActivityNew"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string/jumbo v8, "com.youku.laifeng.ugc.activity.ActivityDetailActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string/jumbo v8, "com.youku.laifeng.ugc.activity.SponsorGuideActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string/jumbo v8, "com.youku.laifeng.lib.someonepagewidget.userpage.activity.UserPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    const-string/jumbo v8, "com.youku.laifeng.lib.someonepagewidget.SingCalendar.activity.SignCalendarActivityNew"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string/jumbo v8, "com.youku.laifeng.lib.someonepagewidget.publicnumberpage.activity.PrivewShowsActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string/jumbo v8, "com.youku.laifeng.lib.someonepagewidget.publicnumberpage.activity.PublicNumberDataActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string/jumbo v8, "com.youku.laifeng.lib.someonepagewidget.publicnumberpage.activity.PublicNumberPageActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string/jumbo v8, "com.youku.laifeng.module.recharge.activity.RechargeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string/jumbo v8, "com.youku.laifeng.module.recharge.activity.ReChargeCatalogueConfirmActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string/jumbo v8, "com.youku.laifeng.module.recharge.activity.ReChargeResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string/jumbo v8, "com.youku.laifeng.module.recharge.activity.WeixinInstallNewActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string/jumbo v8, "com.taobao.orange.service.OrangeApiService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-string/jumbo v8, "com.youku.laifeng.sdk.broadcast.RoomBroadcast"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string/jumbo v8, "com.taobao.orange.receiver.OrangeReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    const-string/jumbo v8, "com.youku.danmaku.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    const-string/jumbo v8, "com.youku.share.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1233
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1234
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1235
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1237
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1238
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1239
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1240
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1242
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1243
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1244
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1245
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1246
    const-string/jumbo v8, "7py8aozkfkpm"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1247
    const-string/jumbo v8, "com.aligame.gamecenter.api"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1248
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 1249
    const-string/jumbo v8, "com.aligame.gamecenter.api.GameCenterApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1250
    const-string/jumbo v8, "com.aligame.gamecenter.adapter.impl.GameCenterLauncherActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string/jumbo v8, "com.aligame.gamecenter.core.activity.GameCenterHostActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string/jumbo v8, "com.aligame.gamecenter.core.activity.PlayVideoActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    const-string/jumbo v8, "com.aligame.gamecenter.core.activity.InstallGameActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    const-string/jumbo v8, "com.aligame.gamecenter.core.activity.PullupHostActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string/jumbo v8, "com.common.had.core.program.vpn.FirewallFakeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const-string/jumbo v8, "com.aligame.gamecenter.api.service.GameCenterService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string/jumbo v8, "com.aligame.gamecenter.core.service.ForegroundService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string/jumbo v8, "com.aligame.gamecenter.core.service.GameCenterCoreService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string/jumbo v8, "com.common.had.core.program.vpn.FirewallService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string/jumbo v8, "com.youku.android.player.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    const-string/jumbo v8, "com.youku.ad.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    const-string/jumbo v8, "com.youku.ppsdk.container"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1265
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1266
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1267
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1268
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1269
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1270
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1271
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1272
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1274
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1275
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1276
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1277
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1278
    const-string/jumbo v8, "b2as8rqgxukh"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1279
    const-string/jumbo v8, "com.shuqi.aliyun"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1280
    iput-boolean v11, v3, Lc8/Yx;->isInternal:Z

    .line 1281
    const-string/jumbo v8, "com.shuqi.application.ShuqiApplication"

    iput-object v8, v3, Lc8/Yx;->applicationName:Ljava/lang/String;

    .line 1282
    const-string/jumbo v8, "com.shuqi.activity.BookCatalogActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string/jumbo v8, "com.shuqi.activity.PurchaseHistoryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string/jumbo v8, "com.shuqi.douticket.DouTicketActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string/jumbo v8, "com.shuqi.activity.wallet.MyWalletActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string/jumbo v8, "com.shuqi.activity.WebKitActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string/jumbo v8, "com.shuqi.activity.SearchResultActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string/jumbo v8, "com.shuqi.activity.BookSearchActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v8, "com.shuqi.recharge.RechargeModeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string/jumbo v8, "com.shuqi.recharge.RechargePriceActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo v8, "com.shuqi.activity.PayRdoWebActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string/jumbo v8, "com.shuqi.activity.PayRdoDetailsWebActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    const-string/jumbo v8, "com.shuqi.activity.DirectPaymentActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string/jumbo v8, "com.shuqi.recharge.RechargeRecordActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string/jumbo v8, "com.shuqi.activity.PurchaseChapterHistoryActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string/jumbo v8, "com.shuqi.download.batch.BookDownloadManagerActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string/jumbo v8, "com.shuqi.activity.CancleBuyActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string/jumbo v8, "com.shuqi.activity.MainActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string/jumbo v8, "com.shuqi.activity.home.SchemeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string/jumbo v8, "com.shuqi.browser.BrowserActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    const-string/jumbo v8, "com.shuqi.activity.BookCoverWebActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string/jumbo v8, "com.shuqi.activity.BookRecommend"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string/jumbo v8, "com.shuqi.y4.ReadActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string/jumbo v8, "com.shuqi.service.pay.youku.YouKuRechargeActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string/jumbo v8, "com.shuqi.y4.voice.service.VoiceService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string/jumbo v8, "com.shuqi.service.AlarmManagerReceiver"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    const-string/jumbo v8, "com.youku.phone.commonbundle"

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1310
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1311
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1312
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1313
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1314
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1315
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1316
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1317
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1319
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1320
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1321
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1322
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1323
    const-string/jumbo v8, "xoi4282xpjds"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1324
    const-string/jumbo v8, "com.youku.ppsdk.container"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1325
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1326
    const-string/jumbo v8, "com.ppsdk.YKPPSdkHostActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string/jumbo v8, "com.pp.sdk.activity.PPProxyFragmentActivity"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string/jumbo v8, "com.pp.sdk.service.PPProxyService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    const-string/jumbo v8, "com.lib.downloader.RPPDBindService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    new-instance v3, Lc8/Yx;

    .end local v3    # "info":Lc8/Yx;
    invoke-direct {v3}, Lc8/Yx;-><init>()V

    .line 1332
    .restart local v3    # "info":Lc8/Yx;
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1333
    .restart local v0    # "activities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1334
    .restart local v7    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1335
    .restart local v6    # "receivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1336
    .restart local v5    # "providers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1337
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1338
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1339
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .restart local v2    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, v3, Lc8/Yx;->activities:Ljava/util/HashMap;

    .line 1341
    iput-object v7, v3, Lc8/Yx;->services:Ljava/util/HashMap;

    .line 1342
    iput-object v6, v3, Lc8/Yx;->receivers:Ljava/util/HashMap;

    .line 1343
    iput-object v5, v3, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    .line 1344
    iput-object v2, v3, Lc8/Yx;->dependency:Ljava/util/List;

    .line 1345
    const-string/jumbo v8, "39qrqzmpaud23"

    iput-object v8, v3, Lc8/Yx;->unique_tag:Ljava/lang/String;

    .line 1346
    const-string/jumbo v8, "com.taobao.alivfssdk.monitor"

    iput-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    .line 1347
    iput-boolean v10, v3, Lc8/Yx;->isInternal:Z

    .line 1348
    const-string/jumbo v8, "com.taobao.alivfssdk.monitor.AVFSMonitorService"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    iget-object v8, v3, Lc8/Yx;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    return-object v4
.end method
