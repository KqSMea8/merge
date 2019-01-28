.class public final Lc8/JWc;
.super Ljava/lang/Object;
.source "PageLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IWc;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PageLogUtils"

.field private static mInstance:Lc8/JWc;

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field public pageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/IWc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/JWc;->mInstanceSync:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lc8/JWc;->mInstance:Lc8/JWc;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    .line 106
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "HomeMainFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_homeselect"

    const-string/jumbo v4, "a2h04.8165646"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "PersonalizedFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_homerec"

    const-string/jumbo v4, "a2h04.8165617"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "InteractionFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_homehot"

    const-string/jumbo v4, "a2h04.8165624"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelListFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_channellist"

    const-string/jumbo v4, "a2h05.8165802"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelListPage"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_channellist"

    const-string/jumbo v4, "a2h05.8165802"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelHomeFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_channelmain"

    const-string/jumbo v4, "a2h05.8165803"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelMainActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_channelmain"

    const-string/jumbo v4, "a2h05.8165803"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_allvideo"

    const-string/jumbo v4, "a2h05.8166141"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ChannelRankActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_videorank"

    const-string/jumbo v4, "a2h05.8166139"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DetailActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_playpage"

    const-string/jumbo v4, "a2h08.8165823"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "TopicActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_zhuanti"

    const-string/jumbo v4, "a2h0g.8167972"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CaptureActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_scanqrcode"

    const-string/jumbo v4, "a2h0f.8168542"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CaptureResultAcitvity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_scanqrcodesucc"

    const-string/jumbo v4, "a2h0f.8198610"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "HistoryActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_history"

    const-string/jumbo v4, "a2h0a.8166713"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "InteractionTabImagePagerActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_hotpicture"

    const-string/jumbo v4, "a2h04.8229692"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ExternalDetailActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_searchplayerpage"

    const-string/jumbo v4, "a2h0c.8225109"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SettingsActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucsetting"

    const-string/jumbo v4, "a2h09.8168142"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "HomeInterestActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_subthousand"

    const-string/jumbo v4, "a2h04.8249882"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ActivityWelcome"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_activewelcome"

    const-string/jumbo v4, "a2h0f.8244242"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GuideActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_newversion"

    const-string/jumbo v4, "a2h0f.8244244"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DownloadPageActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_download"

    const-string/jumbo v4, "a2h0b.8166716"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ScoreActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_rate"

    const-string/jumbo v4, "a2h0f.8166724"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CacheSeriCacheSeriesesActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_cacheseries"

    const-string/jumbo v4, "a2h0b.8244263"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MessageMineFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucmessagemy"

    const-string/jumbo v4, "a2h09.8168129"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MessageLocalFragment"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucmessagepush"

    const-string/jumbo v4, "a2h09.8168139"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MyUploadPageActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucmyvideo"

    const-string/jumbo v4, "a2h09.8168443"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MyCollectionsActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucplaylist"

    const-string/jumbo v4, "a2h09.8168435"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "FavoritePageActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucfav"

    const-string/jumbo v4, "a2h09.8168437"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "UserProfileActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_ucmyprofile"

    const-string/jumbo v4, "a2h09.8168438"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "DownloadPageActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_download"

    const-string/jumbo v4, "a2h0b.8166716"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    const-string/jumbo v1, "CacheSeriesActivity"

    new-instance v2, Lc8/IWc;

    const-string/jumbo v3, "page_cacheseries"

    const-string/jumbo v4, "a2h0b.8244263"

    invoke-direct {v2, p0, v3, v4, v5}, Lc8/IWc;-><init>(Lc8/JWc;Ljava/lang/String;Ljava/lang/String;Lc8/HWc;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public static getInstance()Lc8/JWc;
    .locals 2

    .prologue
    .line 24
    sget-object v1, Lc8/JWc;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lc8/JWc;->mInstance:Lc8/JWc;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lc8/JWc;->mInstance:Lc8/JWc;

    monitor-exit v1

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lc8/JWc;

    invoke-direct {v0}, Lc8/JWc;-><init>()V

    sput-object v0, Lc8/JWc;->mInstance:Lc8/JWc;

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sget-object v0, Lc8/JWc;->mInstance:Lc8/JWc;

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "classSimpleName"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v1, ""

    .line 46
    .local v1, "pageName":Ljava/lang/String;
    iget-object v2, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IWc;

    .line 48
    .local v0, "mPageInfo":Lc8/IWc;
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Lc8/IWc;->pageName:Ljava/lang/String;

    .line 52
    .end local v0    # "mPageInfo":Lc8/IWc;
    :cond_0
    return-object v1
.end method

.method public getSpm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "classSimpleName"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v1, ""

    .line 57
    .local v1, "spm":Ljava/lang/String;
    iget-object v2, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lc8/JWc;->pageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IWc;

    .line 59
    .local v0, "mPageInfo":Lc8/IWc;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, v0, Lc8/IWc;->spm:Ljava/lang/String;

    .line 63
    .end local v0    # "mPageInfo":Lc8/IWc;
    :cond_0
    return-object v1
.end method

.method public startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "pageSpm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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
    .line 98
    .local p4, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSessionForUt().....activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",pageSpm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",extend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    if-nez p4, :cond_0

    .line 100
    new-instance p4, Ljava/util/HashMap;

    .end local p4    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local p4    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lc8/LHg;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 103
    return-void

    .line 98
    :cond_1
    invoke-virtual {p4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "classSimpleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc8/JWc;->getPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "pageName":Ljava/lang/String;
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc8/JWc;->getSpm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "spm":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionForUt().....activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",classSimpleName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",spm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",extend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .restart local p3    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1, v0, v1, p3}, Lc8/LHg;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 88
    return-void

    .line 83
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
