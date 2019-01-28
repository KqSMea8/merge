.class public Lc8/RMg;
.super Ljava/lang/Object;
.source "YKTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/PMg;,
        Lc8/NMg;,
        Lc8/QMg;
    }
.end annotation


# static fields
.field private static mDelegate:Lc8/KMg;

.field private static mModuleConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mScanStaticsParamPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/JMg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mNeedAutoStaticsActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lc8/KMg;

    invoke-direct {v0}, Lc8/KMg;-><init>()V

    sput-object v0, Lc8/RMg;->mDelegate:Lc8/KMg;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/RMg;->mScanStaticsParamPlugins:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/RMg;->mNeedAutoStaticsActivityList:Ljava/util/List;

    .line 61
    new-instance v0, Lc8/PMg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/PMg;-><init>(Lc8/RMg;Lc8/MMg;)V

    .line 62
    .local v0, "paramPlugin":Lc8/PMg;
    sget-object v1, Lc8/RMg;->mScanStaticsParamPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lc8/SMg;->utFilterKeyList:Ljava/util/List;

    const-string/jumbo v2, "pagename"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lc8/SMg;->utFilterKeyList:Ljava/util/List;

    const-string/jumbo v2, "arg1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lc8/MMg;)V
    .locals 0
    .param p1, "x0"    # Lc8/MMg;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/RMg;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lc8/RMg;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/RMg;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lc8/RMg;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lc8/QMg;->access$200()Lc8/RMg;

    move-result-object v0

    return-object v0
.end method

.method static getModuleConfigMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getOrangeConfig()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "YKTrackerManager"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lc8/HMg;->parseInitConfig(Ljava/util/Map;)V

    .line 424
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ykgodviewtracker_android_switch"

    aput-object v2, v1, v3

    new-instance v2, Lc8/MMg;

    invoke-direct {v2, p0}, Lc8/MMg;-><init>(Lc8/RMg;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 444
    return-void
.end method

.method private static handleUTExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 246
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lc8/SMg;->utFilterKeyList:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, Lc8/SMg;->utFilterKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v6, "handleUTExposureTag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " value:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lc8/VMg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v4, "autoexp"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v3, ""

    .line 258
    .local v3, "viewIdStr":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lc8/WMg;->getSpmParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "block":Ljava/lang/String;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v0, v5, v2}, Lcom/ut/mini/UTTracker;->setExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    return-void

    .line 257
    .end local v0    # "block":Ljava/lang/String;
    .end local v3    # "viewIdStr":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static setModuleConfig(Ljava/lang/String;Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;

    .prologue
    .line 100
    sget-object v0, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    .line 103
    :cond_0
    sget-object v0, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public static setTrackerTagParam(Landroid/view/View;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p2, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1, p2}, Lc8/RMg;->setTrackerTagParamWithIndex(Landroid/view/View;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static setTrackerTagParamWithIndex(Landroid/view/View;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewIndex"    # Ljava/lang/String;
    .param p3, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v3, Lc8/SMg;->trackerOpen:Z

    if-nez v3, :cond_1

    .line 128
    const-string/jumbo v3, "YKTrackerManager"

    const-string/jumbo v4, "trackerOpen is false"

    invoke-static {v3, v4}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string/jumbo v3, "YKTrackerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTrackerTagParamAll->view is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "viewIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "module is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "map is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Lc8/VMg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v3, Lc8/RMg;->mScanStaticsParamPlugins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/JMg;

    .line 136
    .local v1, "plugin":Lc8/JMg;
    invoke-interface {v1, p0, p1, p2}, Lc8/JMg;->scanStaticsParamPlugin(Landroid/view/View;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 139
    .end local v1    # "plugin":Lc8/JMg;
    :cond_2
    const-string/jumbo v3, "spm"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "spm":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string/jumbo v3, "YKTrackerManager"

    const-string/jumbo v4, "setTrackerTagParamAll spm is null!!!!"

    invoke-static {v3, v4}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    sget-object v3, Lc8/RMg;->mModuleConfigMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;

    .line 147
    .local v0, "config":Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;
    if-nez v0, :cond_4

    .line 148
    new-instance v3, Lc8/UMg;

    invoke-direct {v3}, Lc8/UMg;-><init>()V

    invoke-virtual {v3}, Lc8/UMg;->build()Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;

    move-result-object v0

    .line 151
    :cond_4
    sget-boolean v3, Lc8/SMg;->trackerClickOpen:Z

    if-eqz v3, :cond_5

    .line 152
    const/16 v3, -0x232a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    const/16 v3, -0x2329

    invoke-virtual {p0, v3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    const/16 v3, -0x232b

    invoke-virtual {p0, v3, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 155
    sget-object v3, Lc8/RMg;->mDelegate:Lc8/KMg;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    :cond_5
    iget-boolean v3, v0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->exposureEnable:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lc8/SMg;->trackerExposureOpen:Z

    if-eqz v3, :cond_0

    .line 159
    invoke-static {p0, v2, p1, p2}, Lc8/RMg;->handleUTExposureTag(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addToTrack(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 171
    const-string/jumbo v1, "YKTrackerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addToTrack trackerExposureOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lc8/SMg;->trackerExposureOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    iget-object v1, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    .line 180
    :cond_2
    sget-boolean v1, Lc8/SMg;->trackerExposureOpen:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/internal/UTTeamWork;->startExpoTrack(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;Z)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "isDebug"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lc8/RMg;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p2}, Lc8/VMg;->setDebug(Z)V

    .line 85
    const/16 v1, 0x3e8

    sput v1, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 86
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sput-wide v2, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    .line 88
    invoke-direct {p0}, Lc8/RMg;->getOrangeConfig()V

    .line 89
    new-instance v0, Lc8/NMg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/NMg;-><init>(Lc8/RMg;Lc8/MMg;)V

    .line 90
    .local v0, "activityLifecycle":Lc8/NMg;
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public refreshExposureData()V
    .locals 3

    .prologue
    .line 192
    sget-boolean v1, Lc8/SMg;->trackerOpen:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/SMg;->trackerExposureOpen:Z

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTTracker;->refreshExposureData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "YKTrackerManager"

    const-string/jumbo v2, "refreshExposureData error"

    invoke-static {v1, v2}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "block"    # Ljava/lang/String;
    .param p2, "viewId"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-boolean v1, Lc8/SMg;->trackerOpen:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/SMg;->trackerExposureOpen:Z

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ut/mini/UTTracker;->refreshExposureDataByViewId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "YKTrackerManager"

    const-string/jumbo v2, "refreshExposureData error"

    invoke-static {v1, v2}, Lc8/VMg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
