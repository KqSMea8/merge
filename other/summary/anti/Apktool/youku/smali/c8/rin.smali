.class public Lc8/rin;
.super Lc8/qin;
.source "IStaticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/service/statics/IStaticsManager$Apptype;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE:Ljava/lang/String; = "actionType"

.field private static final DETAIL_PAGE:Ljava/lang/String; = "\u8be6\u60c5\u9875"

.field private static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field private static final NULL:Ljava/lang/String; = ""

.field private static final REFRENCE_CODE:Ljava/lang/String; = "refercode"

.field private static final TAG:Ljava/lang/String; = "IStaticsManager"

.field public static cacheDefinitionDialogFrom:I = 0x0

.field private static context:Landroid/content/Context; = null

.field public static currentFragment:I = 0x0

.field public static endTimeTrack:J = 0x0L

.field public static iStaticsManager:Lc8/rin; = null

.field public static isType:I = 0x0

.field public static final other_type:I = 0xb

.field public static startTimeTrack:J


# instance fields
.field private aaid:Ljava/lang/String;

.field private cnIdStr:Ljava/lang/String;

.field public krefValue:Ljava/lang/String;

.field public mainCategoryName:Ljava/lang/String;

.field private shareFromSource:Ljava/lang/String;

.field public subCategoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x1

    sput v0, Lc8/rin;->isType:I

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lc8/rin;->iStaticsManager:Lc8/rin;

    .line 59
    sput-wide v2, Lc8/rin;->startTimeTrack:J

    .line 60
    sput-wide v2, Lc8/rin;->endTimeTrack:J

    .line 74
    sput v1, Lc8/rin;->currentFragment:I

    .line 3314
    sput v1, Lc8/rin;->cacheDefinitionDialogFrom:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDisableLocation"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lc8/qin;-><init>()V

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rin;->krefValue:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rin;->mainCategoryName:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rin;->subCategoryName:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rin;->aaid:Ljava/lang/String;

    .line 1444
    const-string/jumbo v0, "profileCard"

    iput-object v0, p0, Lc8/rin;->shareFromSource:Ljava/lang/String;

    .line 1445
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rin;->cnIdStr:Ljava/lang/String;

    .line 91
    sput-object p1, Lc8/rin;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {p0, p2}, Lc8/rin;->initTrack(Z)V

    .line 93
    return-void
.end method

.method public static CacheSeriesActivityVIP1080PClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 3348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3349
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3353
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3355
    const-string/jumbo v3, "page_download"

    .line 3356
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "downloadbuttonvip"

    .line 3357
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, "a2h08.8165823.mydown.downloadbuttonvip"

    .line 3358
    .local v4, "spm":Ljava/lang/String;
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3363
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3365
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v3    # "page_name":Ljava/lang/String;
    .end local v4    # "spm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static DetailActivityVIP1080PClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 3322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3323
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3327
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3329
    const-string/jumbo v3, "page_playpage"

    .line 3330
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "vipdownloadpage1080p"

    .line 3331
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, "a2h08.8165823.page.downloadbuttonvip"

    .line 3333
    .local v4, "spm":Ljava/lang/String;
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3337
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3338
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3340
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v3    # "page_name":Ljava/lang/String;
    .end local v4    # "spm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static bottomBarActivityClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "actType"    # Ljava/lang/String;
    .param p3, "timeTrack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 3155
    .local p4, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3156
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.footer.activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    const-string/jumbo v1, "activityIconType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3162
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "activity"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3163
    return-void
.end method

.method public static bottomBarCommentClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "actType"    # Ljava/lang/String;
    .param p3, "timeTrack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 3132
    .local p4, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3133
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.footer.writecomms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    const-string/jumbo v1, "activityIconType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3139
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "writecomms"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3140
    return-void
.end method

.method public static bottomBarFunClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "funId"    # Ljava/lang/String;
    .param p3, "actType"    # Ljava/lang/String;
    .param p4, "timeTrack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 3143
    .local p5, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3144
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.footer.planet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    const-string/jumbo v1, "fanId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    const-string/jumbo v1, "activityIconType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    invoke-virtual {v0, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3151
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "planet"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3152
    return-void
.end method

.method public static buyGoldenVIP(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 3548
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3549
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3553
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3554
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 3556
    const-string/jumbo v3, "page_playpage"

    .line 3557
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "buyvip1small"

    .line 3558
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, "a2h08.8165823.smallplayer.buyvip1"

    .line 3566
    .local v4, "spm":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3570
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3573
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v3    # "page_name":Ljava/lang/String;
    .end local v4    # "spm":Ljava/lang/String;
    :cond_0
    return-void

    .line 3561
    :cond_1
    const-string/jumbo v3, "page_playpage"

    .line 3562
    .restart local v3    # "page_name":Ljava/lang/String;
    const-string/jumbo v0, "buyvip1"

    .line 3563
    .restart local v0    # "arg1":Ljava/lang/String;
    const-string/jumbo v4, "a2h08.8165823.fullplayer.buyvip1"

    .restart local v4    # "spm":Ljava/lang/String;
    goto :goto_0
.end method

.method public static cacheVIPDialogCancel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;
    .param p2, "cacheDefinitionDialogFrom"    # I

    .prologue
    .line 3451
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3452
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3453
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, ""

    .line 3454
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 3455
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 3456
    .local v4, "spm":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3457
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3459
    const-string/jumbo v3, "page_playpage"

    .line 3460
    const-string/jumbo v0, "vipdownloadtoastnopage"

    .line 3461
    const-string/jumbo v4, "a2h08.8165823.page.vipdownloadtoastno"

    .line 3483
    :cond_0
    :goto_0
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3489
    const/4 v5, 0x0

    sput v5, Lc8/rin;->cacheDefinitionDialogFrom:I

    .line 3491
    :cond_1
    return-void

    .line 3462
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 3464
    const-string/jumbo v3, "page_download"

    .line 3465
    const-string/jumbo v0, "vipdownloadtoastnomydown"

    .line 3466
    const-string/jumbo v4, "a2h09.8166731.mydown.vipdownloadtoastno"

    goto :goto_0

    .line 3467
    :cond_3
    const/4 v5, 0x3

    if-ne p2, v5, :cond_4

    .line 3469
    const-string/jumbo v3, "page_playpage"

    .line 3470
    const-string/jumbo v0, "vipdownloadtoastnosmallplayer"

    .line 3471
    const-string/jumbo v4, "a2h08.8165823.smallplayer.vipdownloadtoastno"

    goto :goto_0

    .line 3472
    :cond_4
    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    .line 3474
    const-string/jumbo v3, "page_playpage"

    .line 3475
    const-string/jumbo v0, "vipdownloadtoastnopage"

    .line 3476
    const-string/jumbo v4, "a2h08.8165823.page.vipdownloadtoastno"

    goto :goto_0

    .line 3477
    :cond_5
    const/4 v5, 0x5

    if-ne p2, v5, :cond_0

    .line 3479
    const-string/jumbo v3, "page_playpage"

    .line 3480
    const-string/jumbo v0, "vipdownloadtoastno"

    .line 3481
    const-string/jumbo v4, "a2h08.8165823.fullplayer.vipdownloadtoastno"

    goto :goto_0
.end method

.method public static cacheVIPDialogConfirm(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;
    .param p2, "cacheDefinitionDialogFrom"    # I

    .prologue
    .line 3500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3501
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3502
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, ""

    .line 3503
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 3504
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 3505
    .local v4, "spm":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3506
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 3508
    const-string/jumbo v3, "page_playpage"

    .line 3509
    const-string/jumbo v0, "vipdownloadtoastyespage"

    .line 3510
    const-string/jumbo v4, "a2h08.8165823.page.vipdownloadtoastyes"

    .line 3532
    :cond_0
    :goto_0
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3533
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3534
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3538
    const/4 v5, 0x0

    sput v5, Lc8/rin;->cacheDefinitionDialogFrom:I

    .line 3540
    :cond_1
    return-void

    .line 3511
    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    .line 3513
    const-string/jumbo v3, "page_download"

    .line 3514
    const-string/jumbo v0, "vipdownloadtoastyesmydown"

    .line 3515
    const-string/jumbo v4, "a2h09.8166731.mydown.vipdownloadtoastyes"

    goto :goto_0

    .line 3516
    :cond_3
    const/4 v5, 0x3

    if-ne p2, v5, :cond_4

    .line 3518
    const-string/jumbo v3, "page_playpage"

    .line 3519
    const-string/jumbo v0, "vipdownloadtoastyessmallplayer"

    .line 3520
    const-string/jumbo v4, "a2h08.8165823.smallplayer.vipdownloadtoastyes"

    goto :goto_0

    .line 3521
    :cond_4
    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    .line 3523
    const-string/jumbo v3, "page_playpage"

    .line 3524
    const-string/jumbo v0, "vipdownloadtoastyespage"

    .line 3525
    const-string/jumbo v4, "a2h08.8165823.page.vipdownloadtoastyes"

    goto :goto_0

    .line 3526
    :cond_5
    const/4 v5, 0x5

    if-ne p2, v5, :cond_0

    .line 3528
    const-string/jumbo v3, "page_playpage"

    .line 3529
    const-string/jumbo v0, "vipdownloadtoastyes"

    .line 3530
    const-string/jumbo v4, "a2h08.8165823.fullplayer.vipdownloadtoastyes"

    goto :goto_0
.end method

.method public static cachedVideoClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "item"    # I
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lc8/pin;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "track_id":Ljava/lang/String;
    :goto_0
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u7f13\u5b58\u89c6\u9891"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u7f13\u5b58"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dldList.dldListVideoClick."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1056
    return-void

    .line 1050
    .end local v1    # "track_id":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lc8/pin;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    const-string/jumbo v2, "showid"

    invoke-static {v2, p2}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1053
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "track_id":Ljava/lang/String;
    goto :goto_0
.end method

.method public static channelFilterStatics(Lcom/youku/vo/ChannelTabInfo;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "channelTabInfo"    # Lcom/youku/vo/ChannelTabInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/vo/ChannelTabInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "filterHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 677
    const-string/jumbo v1, "cn"

    invoke-virtual {p0}, Lcom/youku/vo/ChannelTabInfo;->getFirstChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string/jumbo v1, "cs"

    invoke-virtual {p0}, Lcom/youku/vo/ChannelTabInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7b5b\u9009\u9879\u70b9\u51fb"

    const-string/jumbo v3, "\u9891\u9053\u9875"

    const-string/jumbo v4, "channel.videoSelect"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 684
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static channelPageSelectedStatics(Lcom/youku/vo/ChannelTabInfo;I)V
    .locals 7
    .param p0, "channelTabInfo"    # Lcom/youku/vo/ChannelTabInfo;
    .param p1, "position"    # I

    .prologue
    .line 703
    if-eqz p0, :cond_0

    .line 704
    add-int/lit8 v1, p1, 0x1

    .line 705
    .local v1, "pos":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 706
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "cn"

    invoke-virtual {p0}, Lcom/youku/vo/ChannelTabInfo;->getFirstChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string/jumbo v2, "cs"

    invoke-virtual {p0}, Lcom/youku/vo/ChannelTabInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5b50\u9891\u9053tab"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb\u6216\u6ed1\u52a8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u9891\u9053\u9875"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "channel.subChannelTabClick_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 712
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method public static channelVideoMoreClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2953
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u89c6\u9891\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelVideosMoreClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2957
    return-void
.end method

.method public static channelVideoMoreFavoriteClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2962
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u89c6\u9891\u66f4\u591a\u6309\u94ae(\u6536\u85cf)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelVideosMoreFavoriteClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2966
    return-void
.end method

.method public static channelVideoMoreShareClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2971
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u89c6\u9891\u66f4\u591a\u6309\u94ae(\u5206\u4eab)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelVideosMoreShareClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2975
    return-void
.end method

.method public static checkProtocolStatics(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2614
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "athena"

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2615
    sget-boolean v1, Lc8/VLj;->isShowLog:Z

    if-eqz v1, :cond_0

    .line 2617
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2618
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 2622
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "athlist"

    const-string/jumbo v3, "athena"

    invoke-virtual {v1, v2, v3, p0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2623
    return-void
.end method

.method public static detailADCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "moduleid"    # Ljava/lang/String;
    .param p3, "typeid"    # Ljava/lang/String;
    .param p4, "cardType"    # Ljava/lang/String;

    .prologue
    .line 2041
    const-string/jumbo v1, "subClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2042
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    const-string/jumbo v1, "bannerid"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string/jumbo v1, "typeid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "banner\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detail.bannerCardClick_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2047
    return-void
.end method

.method public static detailBannerCardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "moduleid"    # Ljava/lang/String;
    .param p3, "cardType"    # Ljava/lang/String;

    .prologue
    .line 2033
    const-string/jumbo v1, "subClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2034
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    const-string/jumbo v1, "bannerid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "banner\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detail.bannerCardClick_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2038
    return-void
.end method

.method public static detailBannerCardShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "moduleid"    # Ljava/lang/String;
    .param p4, "cardType"    # Ljava/lang/String;

    .prologue
    .line 2013
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2014
    .local v6, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "vid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    const-string/jumbo v0, "title"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    const-string/jumbo v0, "bannerid"

    invoke-virtual {v6, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "banner\u5361\u7247\u5c55\u73b0"

    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "detail.bannerCardShow_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v6, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2018
    const-string/jumbo v0, "1055"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2019
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2020
    .local v5, "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "bannerCardShow"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "CardShow"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string/jumbo v0, "moduleid"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    const-string/jumbo v0, "title"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    const-string/jumbo v0, "bannerid"

    const-string/jumbo v1, "1055"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2029
    .end local v5    # "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static detailBottomBarCommentsClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 1940
    .local p3, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "comment"

    .line 1941
    .local v2, "widgetName":Ljava/lang/String;
    const-string/jumbo v1, "a2h08.8165823.footer.comment"

    .line 1942
    .local v1, "spm":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1943
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "vid"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const-string/jumbo v3, "showid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const-string/jumbo v3, "playlistid"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const-string/jumbo v3, "spm"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1948
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1951
    return-void
.end method

.method public static detailCacheCardDownloadClick([Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "vids"    # [Ljava/lang/String;
    .param p1, "format"    # I
    .param p2, "nowVideo"    # Ljava/lang/String;

    .prologue
    .line 2488
    const-string/jumbo v4, ""

    .line 2489
    .local v4, "videolist":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2490
    if-eqz v2, :cond_0

    .line 2491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2493
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2496
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2510
    :pswitch_0
    const-string/jumbo v0, "1"

    .line 2513
    .local v0, "formatstr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "downloadClick"

    const-string/jumbo v6, "interact"

    invoke-static {v5, v6}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2514
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "videolist"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2515
    const-string/jumbo v5, "clarity"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    const-string/jumbo v5, "vid"

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    sget-object v5, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v6, "\u7f13\u5b58\u5361\u7247\u5f00\u59cb\u7f13\u5b58"

    const-string/jumbo v7, "\u7f13\u5b58\u5361\u7247"

    const-string/jumbo v8, "cacheCard.cacheCardDownload"

    invoke-virtual {v5, v6, v7, v1, v8}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2518
    return-void

    .line 2498
    .end local v0    # "formatstr":Ljava/lang/String;
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    const-string/jumbo v0, "1"

    .line 2499
    .restart local v0    # "formatstr":Ljava/lang/String;
    goto :goto_1

    .line 2501
    .end local v0    # "formatstr":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "2"

    .line 2502
    .restart local v0    # "formatstr":Ljava/lang/String;
    goto :goto_1

    .line 2504
    .end local v0    # "formatstr":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "3"

    .line 2505
    .restart local v0    # "formatstr":Ljava/lang/String;
    goto :goto_1

    .line 2507
    .end local v0    # "formatstr":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "4"

    .line 2508
    .restart local v0    # "formatstr":Ljava/lang/String;
    goto :goto_1

    .line 2496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static detailCall2CacheStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "cookieid"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 1155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1156
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string/jumbo v1, "cookieid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detail.call2Cache.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1160
    return-void
.end method

.method public static detailCallupStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "cookieid"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;

    .prologue
    .line 1141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1142
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string/jumbo v1, "cookieid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detail.callupPlay.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    return-void
.end method

.method public static detailCardCommentsButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 1954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1955
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string/jumbo v1, "showid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    const-string/jumbo v1, "playlistid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8be6\u60c5\u5361\u7247\u8bc4\u8bba\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u5361\u7247"

    const-string/jumbo v4, "profileCard.commentbutton"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method public static detailCardExternalVideoClick(ILjava/util/HashMap;)V
    .locals 5
    .param p0, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3118
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3119
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expand_plot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3120
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.intro.ex_plot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3121
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3123
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3124
    return-void
.end method

.method public static detailCardPraiseButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 1963
    const-string/jumbo v2, "profileCardgoodbutton"

    .line 1964
    .local v2, "widgetName":Ljava/lang/String;
    const-string/jumbo v1, "a2h08.8165823.page.action"

    .line 1965
    .local v1, "spm":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1966
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "vid"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    const-string/jumbo v3, "showid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    const-string/jumbo v3, "playlistid"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    const-string/jumbo v3, "spm"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1974
    return-void
.end method

.method public static detailCardTitlShareClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "sharesource"    # Ljava/lang/String;

    .prologue
    .line 1982
    const-string/jumbo v2, "a2h0f.8198486.share.callshare"

    .line 1983
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v0, "callshare"

    .line 1984
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clickShareBtn().spm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",arg1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1985
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1986
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const-string/jumbo v3, "sharesource"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    const-string/jumbo v3, "page_share"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1990
    return-void
.end method

.method public static detailCardTitleCommentsClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 1920
    .local p3, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "comment"

    .line 1921
    .local v2, "widgetName":Ljava/lang/String;
    const-string/jumbo v1, "a2h08.8165823.intro.comment"

    .line 1922
    .local v1, "spm":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1923
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "vid"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    const-string/jumbo v3, "showid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    const-string/jumbo v3, "playlistid"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    const-string/jumbo v3, "spm"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1928
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1931
    return-void
.end method

.method public static detailCommentCardMoreButtonClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 1908
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1909
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8bc4\u8bba\u5361\u7247\u5207\u6362"

    const-string/jumbo v3, "\u89c6\u9891\u8bc4\u8bba\u5361\u7247"

    const-string/jumbo v4, "commentCard.commentDetailCard"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1911
    return-void
.end method

.method public static detailContentCardItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "object_num"    # Ljava/lang/String;
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "cardOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 2217
    .local p3, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2218
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2219
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.operation_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2220
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2222
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2223
    return-void
.end method

.method public static detailContentCardMoreClick(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "cardOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2232
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2233
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operation_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_topright1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2234
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.operation_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".topright1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2235
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2237
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2238
    return-void
.end method

.method public static detailDetailCardClickNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "action_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 2371
    .local p2, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2373
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "intro_topright1"

    .line 2374
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v2, "a2h08.8165823.intro.topright1"

    .line 2375
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2384
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2385
    return-void
.end method

.method public static detailDetialCardClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2366
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8be6\u60c5\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.profiledetailCard"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2368
    return-void
.end method

.method public static detailDownloadButtonClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2475
    const-string/jumbo v1, "downloadClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2476
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e0b\u8f7d\u6d6e\u5c42\u8fdb\u5165\u4e0b\u8f7d\u5217\u8868"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.downloadButton"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2478
    return-void
.end method

.method public static detailExternalInstallUC(Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 2268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2269
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h0c.8225109.fakeplayer.playinstall"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    const-string/jumbo v1, "page_searchplayerpage"

    const-string/jumbo v2, "searchpgfakeplayinstall"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2272
    return-void
.end method

.method public static detailExternalMiddlePageDialogSelect(Ljava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 2257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2258
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h0c.8225109.fakeplayer.playmenu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const-string/jumbo v1, "page_searchplayerpage"

    const-string/jumbo v2, "searchpgfakeplaymenu"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2261
    return-void
.end method

.method public static detailExternalVideoClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 2245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2246
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h0c.8225109.fakeplayer.playicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    const-string/jumbo v1, "showid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    const-string/jumbo v1, "page_searchplayerpage"

    const-string/jumbo v2, "searchpgfakeplayicon"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2250
    return-void
.end method

.method public static detailFavoriteClickClick(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2637
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2638
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.intro.favorite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2640
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2641
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "favorite"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2643
    return-void
.end method

.method public static detailFunctionCardItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/detail/data/Video;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "SignTitle"    # Ljava/lang/String;
    .param p3, "Signid"    # Ljava/lang/String;
    .param p4, "clickUrl"    # Ljava/lang/String;
    .param p5, "video"    # Lcom/youku/phone/detail/data/Video;
    .param p6, "sequence"    # Ljava/lang/String;
    .param p7, "cid"    # Ljava/lang/String;

    .prologue
    .line 2100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2101
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    const-string/jumbo v2, "SignTitle"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-string/jumbo v2, "Signid"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "cid"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ur"

    invoke-static {p4}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    :cond_1
    const-string/jumbo v2, "1013"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2108
    if-eqz p5, :cond_3

    .line 2109
    const-string/jumbo v0, "signCard.signclick"

    .line 2110
    .local v0, "clickContent":Ljava/lang/String;
    iget v2, p5, Lcom/youku/phone/detail/data/Video;->idType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2113
    const-string/jumbo v2, "SignVid"

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    :cond_2
    :goto_0
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v3, "\u529f\u80fd\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v4, "\u529f\u80fd\u5165\u53e3\u5361\u7247"

    invoke-virtual {v2, v3, v4, v1, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2128
    .end local v0    # "clickContent":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 2114
    .restart local v0    # "clickContent":Ljava/lang/String;
    :cond_4
    iget v2, p5, Lcom/youku/phone/detail/data/Video;->idType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 2116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".2_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    const-string/jumbo v2, "SignVid"

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2118
    :cond_5
    iget v2, p5, Lcom/youku/phone/detail/data/Video;->idType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 2120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".3_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2121
    const-string/jumbo v2, "SignVid"

    iget-object v3, p5, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2126
    .end local v0    # "clickContent":Ljava/lang/String;
    :cond_6
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v3, "\u529f\u80fd\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v4, "\u529f\u80fd\u5165\u53e3\u5361\u7247"

    const-string/jumbo v5, "signCard.signclick"

    invoke-virtual {v2, v3, v4, v1, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static detailFunctionCardItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 5
    .param p0, "object_num"    # Ljava/lang/String;
    .param p1, "cardOrder"    # Ljava/lang/String;
    .param p3, "cardnum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2138
    .local p2, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2139
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sign"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2140
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.sign"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2141
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2143
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2144
    return-void
.end method

.method public static detailGuideCardItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "clickUrl"    # Ljava/lang/String;
    .param p4, "clickVid"    # Ljava/lang/String;

    .prologue
    .line 2077
    const-string/jumbo v1, "iconClick"

    const-string/jumbo v2, "detailNaviClick"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2078
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    const-string/jumbo v1, "navititle"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    const-string/jumbo v1, "naviid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-static {p3}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "navivid"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    :cond_1
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5bfc\u822a\u5361\u7247\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2084
    return-void
.end method

.method public static detailGuideCardScrollStateChanged(Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2356
    const-string/jumbo v1, "iconSlide"

    const-string/jumbo v2, "naviSlide"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2357
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5bfc\u822a\u5361\u7247\u6ed1\u52a8"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2359
    return-void
.end method

.method public static detailH5CardShow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 2051
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2052
    .local v6, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "entCardShow"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string/jumbo v0, "vid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u4e92\u52a8\u5361\u7247\u5c55\u73b0"

    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2, v6}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2055
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2056
    .local v5, "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "entCardAdr"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "CardAdr"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2061
    return-void
.end method

.method public static detailPageGiftClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 2322
    const-string/jumbo v2, "pageluckybag"

    .line 2323
    .local v2, "arg1":Ljava/lang/String;
    const-string/jumbo v6, "a2h08.8165823.page.luckybag"

    .line 2324
    .local v6, "spm":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2325
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "spm"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2326
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    const-string/jumbo v0, "uid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x835

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2329
    return-void
.end method

.method public static detailPageGiftShwo(Ljava/lang/String;)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2314
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2315
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "spm_item"

    const-string/jumbo v1, "a2h08.8165823.page.luckybag"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2317
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2318
    return-void
.end method

.method public static detailRelatedPartClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "object_num"    # Ljava/lang/String;
    .param p1, "cardOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1873
    .local p2, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1874
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strailer_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.strailer_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1876
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1878
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1879
    return-void
.end method

.method public static detailRelatedPartMoreButtonClick(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "cardOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1896
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1897
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "strailer_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_topright1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.strailer_drawer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".topright1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1899
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1901
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1902
    return-void
.end method

.method public static detailRelatedUCClick(Ljava/lang/String;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 3090
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3091
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "page_playpage_recommendnews"

    .line 3092
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v2, "a2h08.8165823.page.recommendnews"

    .line 3093
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3096
    return-void
.end method

.method public static detailRelatedUCOpen(Ljava/lang/String;)V
    .locals 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 3102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3103
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "page_playpage_recommendnewsinstall"

    .line 3104
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v2, "a2h08.8165823.page.recommendnewsinstall"

    .line 3105
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3108
    return-void
.end method

.method public static detailRelatedVideoClick(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "itemId"    # I
    .param p3, "clickVid"    # Ljava/lang/String;

    .prologue
    .line 1816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1817
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detail.recommendCard.1_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method public static detailRelatedVideoClick(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "itemId"    # I
    .param p3, "clickVid"    # Ljava/lang/String;
    .param p4, "cttype"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "ctid"    # Ljava/lang/String;

    .prologue
    .line 1832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1833
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    const-string/jumbo v1, "cttype"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    const-string/jumbo v1, "ctid"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247"

    const-string/jumbo v4, "detail.recommendCard"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1839
    return-void
.end method

.method public static detailRelatedVideoMoreButtonClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 1797
    const-string/jumbo v1, "subClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1798
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u63a8\u8350\u5361\u7247\u66f4\u591a\u70b9\u51fb"

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247"

    const-string/jumbo v4, "detail.recommendCardMoreClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method public static detailRelatedVideoMoreButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 1803
    const-string/jumbo v1, "subClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1804
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    const-string/jumbo v1, "playlistid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u63a8\u8350\u5361\u7247\u66f4\u591a\u70b9\u51fb"

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247"

    const-string/jumbo v4, "detail.recommendCardMoreClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1807
    return-void
.end method

.method public static detailRelatedVideoShowMoreButton(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 1790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1791
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u63a8\u8350\u5361\u7247\u66f4\u591a\u5c55\u73b0"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    const-string/jumbo v4, "detail.recommendCardMore"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method public static detailSeriesCardDownloadButtonClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2482
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u5267\u96c6\u5361\u7247"

    const-string/jumbo v4, "seriesCard.DownloadButtonClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2485
    return-void
.end method

.method public static detailSeriesMoreButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "cName"    # Ljava/lang/String;
    .param p3, "canShowListSeries"    # Z

    .prologue
    .line 1996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1997
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "moreClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    const-string/jumbo v1, "showId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    if-eqz p3, :cond_0

    .line 2003
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7efc\u827a\u9009\u96c6\u6d6e\u5c42\uff3b\u66f4\u591a\uff3d\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    const-string/jumbo v4, "seriesCard.seriesDetailCard"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2007
    :goto_0
    return-void

    .line 2005
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7535\u89c6\u5267\u9009\u96c6\u6d6e\u5c42\uff3b\u66f4\u591a\uff3d\u70b9\u51fb"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    const-string/jumbo v4, "seriesCard.seriesDetailCard"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static detailSideslipContentCardShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "channelID"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "cardTitle"    # Ljava/lang/String;
    .param p4, "contentCardType"    # I

    .prologue
    .line 2154
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2155
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    :cond_0
    const-string/jumbo v0, "vid"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    const-string/jumbo v0, "contentTitle"

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "contentcardshow"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "cardtitle"

    invoke-virtual {v6, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v0, "contentcardtype"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    :cond_2
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5185\u5bb9\u8fd0\u8425\u5361\u7247\u5c55\u73b0"

    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2, v6}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2165
    .local v5, "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "contentTitle"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    const-string/jumbo v0, "cid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "contentcardshow"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2169
    const-string/jumbo v0, "cardTitle"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2170
    const-string/jumbo v0, "contentcardtype"

    const-string/jumbo v1, "2"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2172
    return-void
.end method

.method public static detailStarCardItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "object_num"    # Ljava/lang/String;
    .param p1, "cardOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 2304
    .local p2, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2305
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "star"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2306
    .local v0, "arg1":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "a2h08.8165823.star."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2307
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2310
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2311
    return-void
.end method

.method public static detailStarCardScrollStateChanged(Ljava/lang/String;)V
    .locals 6
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2291
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2292
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    const-string/jumbo v0, "actiontype"

    const-string/jumbo v1, "starslide"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x8a3

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2295
    return-void
.end method

.method public static detailStarCardShow(Ljava/lang/String;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2278
    const-string/jumbo v6, "a2h08.8165823.page.starcardheadclick"

    .line 2280
    .local v6, "spm_item":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2281
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    const-string/jumbo v0, "spm_item"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2284
    return-void
.end method

.method public static detailSubscribeUserClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2397
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    const-string/jumbo v1, "from"

    const-string/jumbo v2, "detail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "url"

    invoke-static {p2}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8ba2\u9605\u5361\u7247\u8fdb\u4e2a\u4eba\u7a7a\u95f4"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    const-string/jumbo v4, "detail.pchannel"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2402
    return-void
.end method

.method public static detailSubscribeUserClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "playListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 2413
    .local p4, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2414
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.subscribe.userchannel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2417
    const-string/jumbo v1, "from"

    const-string/jumbo v2, "detail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    const-string/jumbo v1, "playlistid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2421
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "userchannel"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2425
    return-void
.end method

.method public static detailUpClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 1556
    const-string/jumbo v1, "updownClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1557
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u9876\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.upClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1559
    return-void
.end method

.method public static detailVIPCardShow(Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2067
    const-string/jumbo v1, "vipCardShow"

    const-string/jumbo v2, "CardShow"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2068
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4f1a\u5458\u5361\u7247\u5c55\u73b0"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2070
    return-void
.end method

.method public static detailVIPSingleSeriesClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;
    .param p2, "cacheDefinitionDialogFrom"    # I

    .prologue
    .line 3281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3282
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3283
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, ""

    .line 3284
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 3285
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 3286
    .local v4, "spm":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3288
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    .line 3289
    const-string/jumbo v3, "page_playpage"

    .line 3290
    const-string/jumbo v0, "vipdownloadpage"

    .line 3291
    const-string/jumbo v4, "a2h08.8165823.page.vipdownload"

    .line 3297
    :cond_0
    :goto_0
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3298
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3299
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3302
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3304
    :cond_1
    return-void

    .line 3292
    :cond_2
    const/4 v5, 0x4

    if-ne p2, v5, :cond_0

    .line 3293
    const-string/jumbo v3, "page_playpage"

    .line 3294
    const-string/jumbo v0, "vipdownloadpage"

    .line 3295
    const-string/jumbo v4, "a2h08.8165823.page.vipdownload"

    goto :goto_0
.end method

.method public static doBingleWatchingClick(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "tracking_state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3598
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "tracking_episodes"

    .line 3599
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v2, "a2h08.8165823.page.tracking_episodes"

    .line 3600
    .local v2, "spm":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3601
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3602
    const-string/jumbo v3, "tracking_state"

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3604
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3605
    return-void
.end method

.method public static doDoubanLongCommentClick(ILjava/util/HashMap;)V
    .locals 3
    .param p0, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3438
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3440
    .local v0, "args1":Ljava/lang/String;
    const-string/jumbo v1, "page_playpage"

    invoke-static {v1, v0, p1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3442
    return-void
.end method

.method public static doDoubanLongCommentJumpClick(ILjava/util/HashMap;)V
    .locals 3
    .param p0, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3591
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3593
    .local v0, "args1":Ljava/lang/String;
    const-string/jumbo v1, "page_playpage"

    invoke-static {v1, v0, p1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3595
    return-void
.end method

.method public static doDoubanShortCommentClick(ILjava/util/HashMap;)V
    .locals 3
    .param p0, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3580
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3582
    .local v0, "args1":Ljava/lang/String;
    const-string/jumbo v1, "page_playpage"

    invoke-static {v1, v0, p1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3584
    return-void
.end method

.method public static doMoreSeriesClick(ILjava/util/HashMap;Z)V
    .locals 4
    .param p0, "cardIndex"    # I
    .param p2, "istvshow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3242
    .local p1, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 3243
    const-string/jumbo v2, "a2h08.8165823.episode.tvshow_topright1"

    .line 3244
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v1, "tvshow_topright1"

    .line 3250
    .local v1, "args1":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3251
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3252
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3254
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v1, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3255
    return-void

    .line 3246
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "args1":Ljava/lang/String;
    .end local v2    # "spm":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "a2h08.8165823.episode.variety_topright1"

    .line 3247
    .restart local v2    # "spm":Ljava/lang/String;
    const-string/jumbo v1, "variety_topright1"

    .restart local v1    # "args1":Ljava/lang/String;
    goto :goto_0
.end method

.method public static doMoreSideClick(ILjava/util/HashMap;)V
    .locals 3
    .param p0, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3416
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3418
    .local v0, "args1":Ljava/lang/String;
    const-string/jumbo v1, "page_playpage"

    invoke-static {v1, v0, p1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3420
    return-void
.end method

.method public static doMoreSideItemClick(ILjava/util/HashMap;)V
    .locals 3
    .param p0, "cardIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3427
    .local p1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3429
    .local v0, "args1":Ljava/lang/String;
    const-string/jumbo v1, "page_playpage"

    invoke-static {v1, v0, p1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3431
    return-void
.end method

.method public static doMoreVideoSCGClick(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3263
    .local p0, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "a2h08.8165823.page.scgcardmore"

    .line 3264
    .local v2, "spm":Ljava/lang/String;
    const-string/jumbo v1, "scgcardmore"

    .line 3266
    .local v1, "args1":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3267
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "spm"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3270
    const-string/jumbo v3, "page_playpage"

    invoke-static {v3, v1, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3272
    return-void
.end method

.method public static doPreloadCacheClick(Z)V
    .locals 8
    .param p0, "switchState"    # Z

    .prologue
    .line 3612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3613
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3615
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "page_playpage"

    .line 3616
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v1, "download_ahead_of_time"

    .line 3617
    .local v1, "args1":Ljava/lang/String;
    const-string/jumbo v4, "a2h0b.8166716.3.download_ahead_of_time"

    .line 3618
    .local v4, "spm":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string/jumbo v5, "on"

    .line 3620
    .local v5, "state":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "state"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3621
    const-string/jumbo v6, "spm"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3622
    const-string/jumbo v6, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3624
    invoke-static {v3, v1, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3625
    return-void

    .line 3618
    .end local v5    # "state":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "off"

    goto :goto_0
.end method

.method public static doPreloadCachexposure(Z)V
    .locals 7
    .param p0, "switchState"    # Z

    .prologue
    .line 3632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3633
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3635
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "page_playpage"

    .line 3636
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v1, "showcontent"

    .line 3637
    .local v1, "args1":Ljava/lang/String;
    const-string/jumbo v4, "a2h0b.8166716.3.download_ahead_of_time"

    .line 3639
    .local v4, "spm":Ljava/lang/String;
    const-string/jumbo v5, "spm"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    invoke-static {v3, v1, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3643
    return-void
.end method

.method public static downloadBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 2441
    const-string/jumbo v1, "downloadBegin"

    const-string/jumbo v2, "eventBegin"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2442
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e0b\u8f7d\u5f00\u59cb"

    const-string/jumbo v3, "\u4e0b\u8f7d"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2445
    return-void
.end method

.method public static downloadCachingClick()V
    .locals 5

    .prologue
    .line 2521
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u533a\u57df\u70b9\u51fb"

    const-string/jumbo v2, "\u7f13\u5b58\u5217\u8868"

    const/4 v3, 0x0

    const-string/jumbo v4, "dldList.cachingClick"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2522
    return-void
.end method

.method public static downloadCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 2448
    const-string/jumbo v1, "downloadCancel"

    const-string/jumbo v2, "eventCancel"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2449
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e0b\u8f7d\u53d6\u6d88"

    const-string/jumbo v3, "\u4e0b\u8f7d"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2452
    return-void
.end method

.method public static downloadCardClick()V
    .locals 5

    .prologue
    .line 2471
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u3010\u4e0b\u8f7d\u3011\u70b9\u51fb"

    const-string/jumbo v2, "\u6211\u7684\u4e2a\u4eba\u4e2d\u5fc3"

    const/4 v3, 0x0

    const-string/jumbo v4, "MyCenter.downloadCardClick"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method public static downloadError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;
    .param p2, "dlerror"    # Ljava/lang/String;
    .param p3, "errortype"    # Ljava/lang/String;

    .prologue
    .line 2462
    const-string/jumbo v1, "downloadError"

    const-string/jumbo v2, "eventError"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2463
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    const-string/jumbo v1, "dlerror"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    const-string/jumbo v1, "errortype"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e0b\u8f7d\u5931\u8d25"

    const-string/jumbo v3, "\u4e0b\u8f7d"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2468
    return-void
.end method

.method public static downloadSucc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 2455
    const-string/jumbo v1, "downloadSuccess"

    const-string/jumbo v2, "eventSuccess"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2456
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e0b\u8f7d\u6210\u529f"

    const-string/jumbo v3, "\u4e0b\u8f7d"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2459
    return-void
.end method

.method public static drawerSubchannelClick(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/lang/String;
    .param p2, "column_id"    # I
    .param p3, "column_pos"    # I

    .prologue
    .line 3006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3007
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    const-string/jumbo v2, "cs"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3011
    .local v1, "track_moduled":Ljava/lang/String;
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v3, "\u62bd\u5c49\u5e95\u90e8\u5b50\u9891\u9053\u5165\u53e3\u70b9\u51fb"

    const-string/jumbo v4, "\u4f18\u9177\u9996\u9875"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.DrawerSubchannelClick_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 3015
    return-void
.end method

.method private static getApiMUT()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public static getChannelFilterStatics(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "obText"    # Ljava/lang/String;
    .param p1, "filterTitles"    # [Ljava/lang/String;
    .param p2, "filterCats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 689
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 690
    array-length v2, p2

    .line 691
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 692
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 696
    const-string/jumbo v3, "ob"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1
    return-object v0
.end method

.method public static getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p0, "actionType"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "actionType"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "eventType"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-object v0
.end method

.method private getHashMapDetailSubscribParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "uidBeen"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;
    .param p6, "playListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1582
    const-string/jumbo v1, "subClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1583
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-string/jumbo v1, ""

    if-eq p6, v1, :cond_0

    .line 1590
    const-string/jumbo v1, "playlistid"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    :cond_0
    return-object v0
.end method

.method public static getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/rin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-class v0, Lc8/rin;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lc8/rin;->getInstance(Landroid/content/Context;Z)Lc8/rin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lc8/rin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceDisableLocation"    # Z

    .prologue
    .line 104
    const-class v1, Lc8/rin;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/rin;->iStaticsManager:Lc8/rin;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lc8/rin;

    invoke-direct {v0, p0, p1}, Lc8/rin;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lc8/rin;->iStaticsManager:Lc8/rin;

    .line 107
    :cond_0
    sget-object v0, Lc8/rin;->iStaticsManager:Lc8/rin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLoginFromValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1604
    .local v0, "mStringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "NA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 1605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    .line 1606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v1, Lc8/VLj;->isTablet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 1607
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/VLj;->versionName:Ljava/lang/String;

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "NA"

    .line 1609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "NA"

    .line 1610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/VLj;->User_Agent:Ljava/lang/String;

    .line 1611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method private getTrackNameByActivity(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "simpleName":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 272
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v2, "ActivityWelcome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    const-string/jumbo v0, "\u542f\u52a8\u9875"

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    const-string/jumbo v2, "HomePageActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const-string/jumbo v0, "\u4f18\u9177\u9996\u9875"

    goto :goto_0

    .line 280
    :cond_2
    const-string/jumbo v2, "ChannelActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const-string/jumbo v0, "\u9891\u9053\u5206\u7c7b"

    goto :goto_0

    .line 282
    :cond_3
    const-string/jumbo v2, "ChannelMainActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const-string/jumbo v0, "\u9891\u9053\u9875"

    goto :goto_0

    .line 284
    :cond_4
    const-string/jumbo v2, "RecommandActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    const-string/jumbo v0, "\u4e13\u9898\u9875"

    goto :goto_0

    .line 286
    :cond_5
    const-string/jumbo v2, "DetailActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    const-string/jumbo v0, "\u8be6\u60c5\u9875"

    goto :goto_0

    .line 288
    :cond_6
    const-string/jumbo v2, "SearchUtil"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    const-string/jumbo v0, "\u641c\u7d22\u9875"

    goto :goto_0

    .line 290
    :cond_7
    const-string/jumbo v2, "SearchResultActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 291
    const-string/jumbo v0, "\u641c\u7d22\u7ed3\u679c\u9875"

    goto :goto_0

    .line 292
    :cond_8
    const-string/jumbo v2, "GameCenterHomeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 293
    const-string/jumbo v0, "\u6e38\u620f\u4e2d\u5fc3"

    goto :goto_0

    .line 296
    :cond_9
    const-string/jumbo v2, "DownloadPageActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 297
    const-string/jumbo v0, "\u7f13\u5b58"

    goto/16 :goto_0

    .line 298
    :cond_a
    const-string/jumbo v2, "HistoryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 299
    const-string/jumbo v0, "\u5386\u53f2"

    goto/16 :goto_0

    .line 304
    :cond_b
    const-string/jumbo v2, "MyUploadPageActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 305
    const-string/jumbo v0, "\u4e0a\u4f20"

    goto/16 :goto_0

    .line 306
    :cond_c
    const-string/jumbo v2, "CaptureActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 307
    const-string/jumbo v0, "\u626b\u4e00\u626b"

    goto/16 :goto_0

    .line 308
    :cond_d
    const-string/jumbo v2, "SettingsActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 309
    const-string/jumbo v0, "\u5e38\u7528\u8bbe\u7f6e"

    goto/16 :goto_0

    .line 310
    :cond_e
    const-string/jumbo v2, "WebViewActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 311
    const-string/jumbo v0, "\u53cd\u9988\u5e2e\u52a9"

    goto/16 :goto_0

    .line 312
    :cond_f
    const-string/jumbo v2, "WebViewActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 313
    const-string/jumbo v0, "\u4e3a\u6211\u8bc4\u5206"

    goto/16 :goto_0

    .line 314
    :cond_10
    const-string/jumbo v2, "LoginRegistCardViewDialogActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 315
    const-string/jumbo v0, "\u767b\u9646/\u6ce8\u518c"

    goto/16 :goto_0

    .line 316
    :cond_11
    const-string/jumbo v2, "VipProductActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string/jumbo v0, "\u4f1a\u5458"

    goto/16 :goto_0
.end method

.method public static guideNextClick()V
    .locals 5

    .prologue
    .line 2855
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5f15\u5bfc\u9875"

    const-string/jumbo v2, "\u9886\u53d6\u70b9\u51fb"

    const/4 v3, 0x0

    const-string/jumbo v4, "yindaoye.lingquclick"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2859
    return-void
.end method

.method public static guideSkipClick()V
    .locals 5

    .prologue
    .line 2863
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5f15\u5bfc\u9875"

    const-string/jumbo v2, "\u8df3\u8fc7\u70b9\u51fb"

    const/4 v3, 0x0

    const-string/jumbo v4, "yindaoye.tiaoguoclick"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2867
    return-void
.end method

.method public static haveBuyVideoStatics(Ljava/lang/String;I)V
    .locals 6
    .param p0, "showid"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    .line 656
    if-eqz p0, :cond_0

    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4ed8\u8d39\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u4ed8\u8d39\u89c6\u9891\u5217\u8868\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payList.payVideoClick.2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 664
    .end local v0    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static historyVideoClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "item"    # I
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "showid"    # Ljava/lang/String;

    .prologue
    .line 1071
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "trackId":Ljava/lang/String;
    :goto_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u89c2\u770b\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u5386\u53f2"

    const-string/jumbo v4, "vid"

    invoke-static {v4, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "historyList.historyVideoClick."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1077
    return-void

    .line 1074
    .end local v0    # "trackId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "trackId":Ljava/lang/String;
    goto :goto_0
.end method

.method public static historyVideoItemClick(Ljava/lang/String;I)V
    .locals 8
    .param p0, "object_id"    # Ljava/lang/String;
    .param p1, "object_type"    # I

    .prologue
    .line 3394
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3395
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3396
    .local v3, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "page_history"

    .line 3397
    .local v4, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "phone_video"

    .line 3398
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v5, "a2h0a.8166713.phone_video.1"

    .line 3399
    .local v5, "spm":Ljava/lang/String;
    const-string/jumbo v6, "spm"

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3401
    :try_start_0
    const-string/jumbo v6, "object_id"

    invoke-virtual {v3, v6, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3402
    const-string/jumbo v6, "object_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3407
    :goto_0
    const-string/jumbo v6, "track_info"

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3408
    invoke-static {v4, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3409
    return-void

    .line 3404
    :catch_0
    move-exception v2

    .line 3405
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static homeCardTrademarkClick(Ljava/lang/String;I)V
    .locals 6
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "moduleID"    # I

    .prologue
    .line 2539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2540
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u70b9\u51fb\u62bd\u5c49icon"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "home.channelTrademarkClick_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2542
    return-void
.end method

.method public static homeChannelnavigationClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 2533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2534
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u9891\u9053\u5bfc\u822a"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const-string/jumbo v4, "home_shome.ChannelnavigationClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2536
    return-void
.end method

.method public static homeH5CardClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "ct"    # Ljava/lang/String;
    .param p1, "h5id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2526
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ct"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string/jumbo v1, "h5id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    const-string/jumbo v1, "url"

    invoke-static {p2}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "h5\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "home.h5Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2530
    return-void
.end method

.method public static homePageGameDialogCloseClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2894
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2895
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u5f39\u7a97\u5173\u95ed\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const-string/jumbo v4, "home.popupclose"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2900
    return-void
.end method

.method public static homePageGameDialogExposure(Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 2871
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2872
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "popupshow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    const-string/jumbo v1, "ifabtest"

    sget v2, Lc8/rin;->isType:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u5f39\u7a97\u5c55\u73b0"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2878
    return-void
.end method

.method public static homePageGameDialogUrlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2883
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2885
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u5f39\u7a97url\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const-string/jumbo v4, "home.popupactivityClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2889
    return-void
.end method

.method public static homeRecCollectionClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2793
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2794
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u6dfb\u52a0\u5230\u6211\u7684\u6536\u85cf\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.Collectionclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2799
    return-void
.end method

.method public static homeRecCommentClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2763
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2764
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8bc4\u8bba\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.commentclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2769
    return-void
.end method

.method public static homeRecNameClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 2752
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2753
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u81ea\u9891\u9053\u5934\u50cf\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.nameclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method public static homeRecReportClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2804
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e3e\u62a5\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.reportclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2809
    return-void
.end method

.method public static homeRecScreenClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2743
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5168\u5c4f\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.screenclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2748
    return-void
.end method

.method public static homeRecShareClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2783
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2784
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5206\u4eab\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.shareclick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2789
    return-void
.end method

.method public static homeRecThreeClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 2773
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2774
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e09\u4e2a\u70b9\u70b9\u51fb"

    const-string/jumbo v3, "\u4e2a\u6027tab"

    const-string/jumbo v4, "home_rec.clickThree"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2779
    return-void
.end method

.method public static homeVideoMoreClick(ILjava/lang/String;)V
    .locals 6
    .param p0, "moduleid"    # I
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 2835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2836
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u6269\u5bb9\u6269\u5c55\u533a\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "home.videomoreClick_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2841
    return-void
.end method

.method public static initialDataUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "lac"    # Ljava/lang/String;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "sim_operator"    # Ljava/lang/String;
    .param p3, "time_zone"    # Ljava/lang/String;
    .param p4, "ir_sdk"    # Ljava/lang/String;

    .prologue
    .line 2844
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2845
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "lac"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2846
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    const-string/jumbo v1, "sim_operator"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    const-string/jumbo v1, "time_zone"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    const-string/jumbo v1, "ir_sdk"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u521d\u59cb\u5316"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2851
    return-void
.end method

.method public static localVideoClick(ILjava/lang/String;)V
    .locals 6
    .param p0, "item"    # I
    .param p1, "vname"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-string/jumbo v1, "vname"

    invoke-static {v1, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1060
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u672c\u5730\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7f13\u5b58"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dldList.localVideoClick.1__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public static newRelatedCardShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "showid"    # Ljava/lang/String;

    .prologue
    .line 2337
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2338
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "strailerCardShow"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "CardShow"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    const-string/jumbo v0, "vid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "showid"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    :cond_0
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5c55\u73b0\u82b1\u7d6e\u5361\u7247"

    const-string/jumbo v2, "\u8be6\u60c5\u9875"

    invoke-virtual {v0, v1, v2, v6}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2344
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2345
    .local v5, "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "strailerCardShow"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "CardShow"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    const-string/jumbo v0, "vid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    const-string/jumbo v0, "sid"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    const-string/jumbo v0, "page_playpage"

    const/16 v1, 0x899

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2350
    return-void
.end method

.method public static nonRecommendScreenExposure(Ljava/lang/String;ILjava/lang/String;Lcom/youku/vo/ChannelTabInfo;Ljava/lang/String;)V
    .locals 5
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "expsq"    # I
    .param p2, "showlist"    # Ljava/lang/String;
    .param p3, "ctb"    # Lcom/youku/vo/ChannelTabInfo;
    .param p4, "pg"    # Ljava/lang/String;

    .prologue
    .line 2686
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    :goto_0
    return-void

    .line 2689
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2690
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pagerealview"

    const-string/jumbo v2, "channel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2691
    const-string/jumbo v1, "cn"

    invoke-virtual {p3}, Lcom/youku/vo/ChannelTabInfo;->getFirstChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    const-string/jumbo v1, "cs"

    invoke-virtual {p3}, Lcom/youku/vo/ChannelTabInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    const-string/jumbo v1, "subtype"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2695
    const-string/jumbo v1, "expsq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2698
    const-string/jumbo v1, "sct"

    const-string/jumbo v2, "94"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    const-string/jumbo v2, "uid"

    sget-boolean v1, Lc8/VLj;->isLogined:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    const-string/jumbo v1, "cookieid"

    sget-object v2, Lc8/VLj;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2703
    const-string/jumbo v1, "apt"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    const-string/jumbo v1, "pg"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    const-string/jumbo v1, "md"

    const-string/jumbo v2, "99"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    const-string/jumbo v1, "showlist"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5206\u5c4f\u66dd\u5149"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/youku/vo/ChannelTabInfo;->getFirstChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u9875"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========= non-recommendDataScreenExposure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 2701
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public static notiSettingDialogNoClick()V
    .locals 5

    .prologue
    .line 2909
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u201c\u6211\u504f\u504f\u4e0d\u8981\u201d\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u63a8\u9001"

    const/4 v3, 0x0

    const-string/jumbo v4, "push.cancel"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2913
    return-void
.end method

.method public static notiSettingDialogYesClick()V
    .locals 5

    .prologue
    .line 2917
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u201c\u90a3\u6715\u8bd5\u8bd5\u5457\u201d\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u63a8\u9001"

    const/4 v3, 0x0

    const-string/jumbo v4, "push.setting"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2921
    return-void
.end method

.method public static p2pCacheVideoState(Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "state"    # I
    .param p2, "source"    # I
    .param p3, "versionName"    # Ljava/lang/String;

    .prologue
    .line 1121
    const-string/jumbo v1, "vid"

    invoke-static {v1, p0}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1122
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string/jumbo v1, "source"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    const-string/jumbo v1, "p2pVersion"

    const-string/jumbo v2, "0.0.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :goto_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u89c6\u9891\u7247\u7f13\u5b58\u52a0\u901f\u5668\u72b6\u6001"

    const-string/jumbo v3, "\u52a0\u901f\u5668"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1130
    return-void

    .line 1127
    :cond_0
    const-string/jumbo v1, "p2pVersion"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static p2pFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "restrictBy"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 1108
    const-string/jumbo v1, "restrictBy"

    invoke-static {v1, p0}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1109
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "p2pVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u52a0\u901f\u5668\u5931\u8d25"

    const-string/jumbo v3, "\u52a0\u901f\u5668"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method public static p2pStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1087
    const-string/jumbo v0, "\u52a0\u901f\u5668\u542f\u52a8"

    .line 1088
    .local v0, "event":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u52a0\u901f\u5668"

    invoke-virtual {v1, v0, v2, v3, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method public static p2pSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "succStartP2p"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 1097
    const-string/jumbo v1, "succStartP2p"

    invoke-static {v1, p0}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1098
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "p2pVersion"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u52a0\u901f\u5668\u6210\u529f"

    const-string/jumbo v3, "\u52a0\u901f\u5668"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public static pagePVStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "pageview"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;

    .prologue
    .line 2574
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2590
    :goto_0
    return-void

    .line 2577
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2578
    .local v5, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "pageview"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    sget v0, Lc8/rin;->isType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2580
    const-string/jumbo v0, "ifabtest"

    sget v1, Lc8/rin;->isType:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2582
    :cond_1
    if-eqz p1, :cond_2

    .line 2583
    const-string/jumbo v0, "cs"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2585
    :cond_2
    if-eqz p2, :cond_3

    .line 2586
    const-string/jumbo v0, "cn"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2589
    :cond_3
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v2, "pageviewdata"

    const-string/jumbo v3, "appall"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/rin;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static pagePVStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "pageview"    # Ljava/lang/String;
    .param p1, "cs"    # Ljava/lang/String;
    .param p2, "cn"    # Ljava/lang/String;
    .param p3, "pulltype"    # I

    .prologue
    .line 2593
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2611
    :goto_0
    return-void

    .line 2596
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2597
    .local v5, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "pageview"

    invoke-virtual {v5, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    const-string/jumbo v0, "pulltype"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2600
    sget v0, Lc8/rin;->isType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2601
    const-string/jumbo v0, "ifabtest"

    sget v1, Lc8/rin;->isType:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    :cond_1
    if-eqz p1, :cond_2

    .line 2604
    const-string/jumbo v0, "cs"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    :cond_2
    if-eqz p2, :cond_3

    .line 2607
    const-string/jumbo v0, "cn"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2610
    :cond_3
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v2, "pageviewdata"

    const-string/jumbo v3, "appall"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/rin;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public static pagePlaypageCacheClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "showId"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "popup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 3174
    .local p3, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3175
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.intro.download"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    const-string/jumbo v1, "popup"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    const-string/jumbo v1, "show_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3180
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "download"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3181
    return-void
.end method

.method public static pagePlaypageSelectallClick()V
    .locals 3

    .prologue
    .line 3228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3229
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.page.sightdownload"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3230
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "page_playpage_sightdownload"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3231
    return-void
.end method

.method public static pagePlaypageSelectallClick(Ljava/lang/String;)V
    .locals 3
    .param p0, "choice"    # Ljava/lang/String;

    .prologue
    .line 3218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3219
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.page.selectall"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3220
    const-string/jumbo v1, "choice"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3221
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "page_playpage_selectall"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3222
    return-void
.end method

.method public static pagePlaypageStartCacheClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "showId"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "quality"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "cache_type"    # Ljava/lang/String;
    .param p5, "no_cache_count"    # Ljava/lang/String;

    .prologue
    .line 3198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3199
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.page.downloadbutton"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3200
    const-string/jumbo v1, "quality"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    const-string/jumbo v1, "language"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    const-string/jumbo v1, "cache_type"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    const-string/jumbo v1, "no_cache_count"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3204
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3205
    const-string/jumbo v1, "show_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "page_playpage_detailsdetaildownloadbutton"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3207
    return-void
.end method

.method public static payPagePageResultTrack(Ljava/lang/String;)V
    .locals 5
    .param p0, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 731
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "payment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v1, "payMethod"

    sget-object v2, Lc8/jKj;->payMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v1, "payProduct"

    sget-object v2, Lc8/jKj;->payProduct:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v1, "vip"

    sget-object v2, Lc8/jKj;->vip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v1, "payResult"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/VLj;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    sget-object v1, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    const-string/jumbo v1, "payPos"

    const-string/jumbo v2, "playcard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string/jumbo v1, "payPeriod"

    sget-object v2, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string/jumbo v1, "payPrice"

    sget-object v2, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u652f\u4ed8\u7ed3\u679c"

    const-string/jumbo v3, "\u652f\u4ed8\u9875"

    const-string/jumbo v4, "pay.payResult"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public static personalCenterVIPSingleSeriesClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 3372
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3373
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3374
    .local v2, "obj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3375
    const-string/jumbo v3, "page_download"

    .line 3376
    .local v3, "page_name":Ljava/lang/String;
    const-string/jumbo v0, "vipdownloadmydown"

    .line 3377
    .local v0, "arg1":Ljava/lang/String;
    const-string/jumbo v4, "a2h09.8166731.mydown.vipdownload"

    .line 3379
    .local v4, "spm":Ljava/lang/String;
    const-string/jumbo v5, "spm"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    const-string/jumbo v5, "vid"

    invoke-virtual {v2, v5, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    const-string/jumbo v5, "showid"

    invoke-virtual {v2, v5, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3383
    const-string/jumbo v5, "track_info"

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3384
    invoke-static {v3, v0, v1}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3386
    .end local v0    # "arg1":Ljava/lang/String;
    .end local v3    # "page_name":Ljava/lang/String;
    .end local v4    # "spm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static personalizedLoadMore()V
    .locals 5

    .prologue
    .line 2825
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u66f4\u591a\u52a0\u8f7d"

    const-string/jumbo v2, "\u4e2a\u6027tab"

    const/4 v3, 0x0

    const-string/jumbo v4, "home_rec.moreRefresh"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2829
    return-void
.end method

.method public static personalizedPullDownRefresh()V
    .locals 5

    .prologue
    .line 2815
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u4e0b\u62c9\u5237\u65b0"

    const-string/jumbo v2, "\u4e2a\u6027tab"

    const/4 v3, 0x0

    const-string/jumbo v4, "home_rec.pullRefresh"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2819
    return-void
.end method

.method public static playerChangeVideoStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "currentVid"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 818
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 819
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v2, "sid"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "player.changevideo.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "encode":Ljava/lang/String;
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e\u5668\u5267\u96c6\u5207\u6362"

    const-string/jumbo v4, "\u5927\u5c4f\u64ad\u653e"

    invoke-virtual {v2, v3, v4, v1, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public static playerClarityClickStatics(Ljava/lang/String;II)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "claritynow"    # I
    .param p2, "clarityafter"    # I

    .prologue
    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 830
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string/jumbo v1, "claritynow"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v1, "clarityafter"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5927\u64ad\u653e\u5668\u591a\u6e05\u6670\u5ea6\u9009\u4e2d"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.clarityClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public static playerClickPluginFullscreenRotateBtnStatics(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 1269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1270
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5168\u5c4f\u65f6\u70b9\u51fb\u65cb\u8f6c\u6309\u94ae"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.rotate"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method public static playerClickPluginSmallFullscreenBtnStatics(Ljava/lang/String;II)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "actionarea"    # I
    .param p2, "is_phone_stream"    # I

    .prologue
    .line 1259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1260
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string/jumbo v1, "actionarea"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string/jumbo v1, "is_phone_stream"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u534a\u5c4f\u65f6\u70b9\u51fb\u5168\u5c4f\u6309\u94ae"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.fullscreen"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1266
    return-void
.end method

.method public static playerDownloadClickStatics(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7f13\u5b58\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.downloadButtonClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public static playerGoVipClickStatics(Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 843
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4f1a\u5458\u7acb\u5373\u5f00\u901a\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.payClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public static playerInteractPointClickStatics(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "entID"    # Ljava/lang/String;
    .param p2, "time"    # I
    .param p3, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1229
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string/jumbo v1, "entID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string/jumbo v1, "time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string/jumbo v1, "pluginType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u63d0\u793a\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.entClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method public static playerInteractPointCloseStatics(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "entID"    # Ljava/lang/String;
    .param p2, "time"    # I
    .param p3, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1249
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string/jumbo v1, "entID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string/jumbo v1, "time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string/jumbo v1, "pluginType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u63d0\u793a\u5173\u95ed"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.entClose"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public static playerInteractPointShowStatics(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "entID"    # Ljava/lang/String;
    .param p2, "time"    # I
    .param p3, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 1208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1209
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string/jumbo v1, "entID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string/jumbo v1, "time"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string/jumbo v1, "pluginType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u63d0\u793a\u51fa\u73b0"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.entShowup"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method public static playerRightInteractClickStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "entID"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fullscreen"    # I

    .prologue
    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1189
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string/jumbo v1, "entID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string/jumbo v1, "fullscreen"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u63d0\u793a\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.entClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1196
    return-void
.end method

.method public static playerRightInteractShowStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "entID"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fullscreen"    # I

    .prologue
    .line 1170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1171
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string/jumbo v1, "entID"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-string/jumbo v1, "fullscreen"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u63d0\u793a\u51fa\u73b0"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.entShowup"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1178
    return-void
.end method

.method public static posterVideoMoreClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2981
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u6d77\u62a5\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelPosterMoreClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2985
    return-void
.end method

.method public static posterVideoMoreFavoriteClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2990
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u6d77\u62a5\u66f4\u591a\u6309\u94ae(\u6536\u85cf)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelPosterMoreFavoriteClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2994
    return-void
.end method

.method public static posterVideoMoreShareClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2999
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u62bd\u5c49\u6d77\u62a5\u66f4\u591a\u6309\u94ae(\u5206\u4eab)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.channelPosterMoreShareClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 3003
    return-void
.end method

.method public static recommendChannelScreenExposure(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "expsq"    # I
    .param p2, "showlist"    # Ljava/lang/String;
    .param p3, "ver"    # Ljava/lang/String;
    .param p4, "ord"    # Ljava/lang/String;
    .param p5, "reqid"    # Ljava/lang/String;

    .prologue
    .line 2649
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2679
    :goto_0
    return-void

    .line 2652
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2653
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pagerealview"

    const-string/jumbo v2, "channel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    const-string/jumbo v1, "cn"

    const-string/jumbo v2, "\u63a8\u8350"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2655
    const-string/jumbo v1, "cs"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2656
    const-string/jumbo v1, "subtype"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    const-string/jumbo v1, "expsq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    const-string/jumbo v1, "sct"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    const-string/jumbo v1, "sid"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    const-string/jumbo v1, "vid"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const-string/jumbo v2, "uid"

    sget-boolean v1, Lc8/VLj;->isLogined:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    const-string/jumbo v1, "cookieid"

    sget-object v2, Lc8/VLj;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    const-string/jumbo v1, "apt"

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    const-string/jumbo v1, "pg"

    const-string/jumbo v2, "27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    const-string/jumbo v1, "md"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    const-string/jumbo v1, "abver"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    const-string/jumbo v1, "ord"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    const-string/jumbo v1, "reqid"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    const-string/jumbo v1, "showlist"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string/jumbo v1, "ucookieid"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string/jumbo v1, "pid"

    sget-object v2, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    const-string/jumbo v1, "ext"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5206\u5c4f\u66dd\u5149"

    const-string/jumbo v3, "\u63a8\u8350\u9875"

    invoke-virtual {v1, v2, v3, v0}, Lc8/rin;->trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "========= recommendChannelScreenExposure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 2664
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public static rssPromulgatorClick(ZILjava/lang/String;)V
    .locals 5
    .param p0, "isSuggest"    # Z
    .param p1, "item"    # I
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u53d1\u5e03\u8005"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "event":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rssList.rssRecomdPersonClick.17_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "encode":Ljava/lang/String;
    :goto_0
    sget-object v2, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v3, "\u8ba2\u9605"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1011
    return-void

    .line 1007
    .end local v0    # "encode":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rssList.rssPersonClick.17_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static rssPromulgatorSubscribeClick(ILjava/lang/String;)V
    .locals 5
    .param p0, "item"    # I
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53d1\u5e03\u8005"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb\u8ba2\u9605"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "event":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rssList.rssRecomdButtonClick_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "encode":Ljava/lang/String;
    const-string/jumbo v3, "uid"

    .line 1017
    invoke-static {v3, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1018
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v4, "\u8ba2\u9605"

    invoke-virtual {v3, v1, v4, v2, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public static rssPromulgatorVideoClick(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "isSuggest"    # Z
    .param p1, "item"    # I
    .param p2, "videoItem"    # I
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "vid"    # Ljava/lang/String;

    .prologue
    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53d1\u5e03\u8005"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u89c6\u9891"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u70b9\u51fb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "event":Ljava/lang/String;
    const-string/jumbo v3, "uid"

    .line 1027
    invoke-static {v3, p3}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 1029
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rssList.rssRecomdVideoClick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "encode":Ljava/lang/String;
    :goto_0
    sget-object v3, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v4, "\u8ba2\u9605"

    invoke-virtual {v3, v1, v4, v2, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1036
    return-void

    .line 1032
    .end local v0    # "encode":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rssList.rssVideoClick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static scoreDialogStatics(Ljava/lang/String;)V
    .locals 4
    .param p0, "encodeStr"    # Ljava/lang/String;

    .prologue
    .line 755
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u8bc4\u5206\u529f\u80fd"

    const-string/jumbo v2, "\u8bc4\u5206"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public static settingAutofindtv(Z)V
    .locals 5
    .param p0, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1294
    if-eqz p0, :cond_0

    .line 1295
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u6253\u5f00\u81ea\u52a8\u53d1\u73b0\u591a\u5c4f\u8bbe\u5907"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    const-string/jumbo v3, "setup.openMultiscreen"

    invoke-virtual {v0, v1, v2, v4, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u5173\u95ed\u81ea\u52a8\u53d1\u73b0\u591a\u5c4f\u8bbe\u5907"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    const-string/jumbo v3, "setup.closeMultiscreen"

    invoke-virtual {v0, v1, v2, v4, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static settingsAccountManagementClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1308
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8d26\u53f7\u7ba1\u7406\u529f\u80fd"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    const-string/jumbo v4, "setup.accountMg"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1310
    return-void
.end method

.method public static settingsDownloadNoticeClick()V
    .locals 5

    .prologue
    .line 1350
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5b8c\u6210\u901a\u77e5"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    const/4 v3, 0x0

    const-string/jumbo v4, "setup.downloadFinish"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1351
    return-void
.end method

.method public static settingsFeedBackClick()V
    .locals 5

    .prologue
    .line 1334
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u70b9\u51fb\u95ee\u9898\u53cd\u9988"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    const/4 v3, 0x0

    const-string/jumbo v4, "setup.problem"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public static settingsLogOutClick()V
    .locals 5

    .prologue
    .line 1354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1355
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    const-string/jumbo v2, "userNumberId"

    invoke-static {v2}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9000\u51fa\u767b\u5f55"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    const-string/jumbo v4, "setup.signout"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Log Out and UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "userNumberId"

    invoke-static {v2}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/Syo;->wz(Ljava/lang/String;)V

    .line 1359
    return-void
.end method

.method public static settingsSkipHeadClick(Z)V
    .locals 3
    .param p0, "isSkipHead"    # Z

    .prologue
    .line 1325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1326
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h09.8168142.1.skipend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string/jumbo v2, "skiptype"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "0"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string/jumbo v1, "page_ucsetting"

    const-string/jumbo v2, "settingclickskipend"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1329
    return-void

    .line 1327
    :cond_0
    const-string/jumbo v1, "1"

    goto :goto_0
.end method

.method public static settingsTelClick(Z)V
    .locals 5
    .param p0, "isVip"    # Z

    .prologue
    .line 1316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "isMember"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u62e8\u6253\u5ba2\u670d\u7535\u8bdd"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    const-string/jumbo v4, "setup.callCenter"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1319
    return-void

    .line 1317
    :cond_0
    const-string/jumbo v1, "2"

    goto :goto_0
.end method

.method public static settingsUpdateClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "step"    # Ljava/lang/String;

    .prologue
    .line 1343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1344
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "step"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u7248\u672c\u66f4\u65b0\u529f\u80fd"

    const-string/jumbo v3, "\u8bbe\u7f6e"

    const-string/jumbo v4, "setup.setupUpdate"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public static shareThirdClickStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "liveid"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "cnStr"    # Ljava/lang/String;

    .prologue
    .line 781
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 782
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "shareClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    const-string/jumbo v1, "liveid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string/jumbo v1, "videotype"

    const-string/jumbo v2, "10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :goto_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5206\u4eab\u5217\u8868\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.shareClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 794
    return-void

    .line 790
    :cond_0
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static slideVideoMoreClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2926
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u8f6e\u64ad\u56fe\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.posterVideoMoreClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2930
    return-void
.end method

.method public static slideVideoMoreFavoriteClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2935
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u8f6e\u64ad\u56fe\u66f4\u591a\u6309\u94ae(\u6536\u85cf)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.posterVideoMoreFavoriteClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2939
    return-void
.end method

.method public static slideVideoMoreShareClick(III)V
    .locals 7
    .param p0, "column_id"    # I
    .param p1, "column_pos"    # I
    .param p2, "position"    # I

    .prologue
    .line 2942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2944
    .local v0, "track_moduled":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u9996\u9875\u8f6e\u64ad\u56fe\u66f4\u591a\u6309\u94ae(\u5206\u4eab)\u70b9\u51fb"

    const-string/jumbo v3, "\u4f18\u9177\u9996\u9875"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "home.posterVideoMoreShareClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2948
    return-void
.end method

.method public static startTvControlFromAbs()V
    .locals 5

    .prologue
    .line 1280
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u6253\u5f00TV\u9065\u63a7\u5668"

    const-string/jumbo v2, "TV\u9065\u63a7\u5668"

    const/4 v3, 0x0

    const-string/jumbo v4, "navigate.tvControl"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public static startTvControlFromSetting()V
    .locals 5

    .prologue
    .line 1287
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u6253\u5f00TV\u9065\u63a7\u5668"

    const-string/jumbo v2, "\u8bbe\u7f6e"

    const/4 v3, 0x0

    const-string/jumbo v4, "setup.tvControl"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method public static topicClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 2626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2627
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u70b9\u51fb\u8bdd\u9898"

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    const-string/jumbo v4, "profileCard.topicClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2630
    return-void
.end method

.method public static userCenterSubscribeClick(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 2388
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v1}, Lc8/rin;->getHashMapLoginFrom()Ljava/util/HashMap;

    move-result-object v0

    .line 2389
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "uid"

    sget-boolean v1, Lc8/VLj;->isLogined:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "url"

    invoke-static {p0}, Lc8/bzo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u3010\u6211\u7684\u8ba2\u9605\u3011\u70b9\u51fb"

    const-string/jumbo v3, "\u6211\u7684\u4e2a\u4eba\u4e2d\u5fc3\u9875"

    const-string/jumbo v4, "MyCenter.rssCardClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2392
    return-void

    .line 2389
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method


# virtual methods
.method public TrackCommonClickEvenForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p4, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 204
    .local p3, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 205
    .local v5, "extendParameter":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lc8/VLj;->isTablet:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "y4."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 207
    const-string/jumbo v0, "refercode"

    invoke-virtual {v5, v0, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    if-eqz p3, :cond_1

    .line 210
    invoke-virtual {v5, p3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 221
    :cond_1
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lc8/rin;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 222
    return-void

    .line 206
    :cond_2
    const-string/jumbo v0, "y1."

    goto :goto_0
.end method

.method public TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p4, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 171
    .local p3, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lc8/VLj;->isTablet:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "y4."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 175
    :cond_0
    if-eqz p3, :cond_3

    .line 176
    const-string/jumbo v0, "\u4f18\u9177\u9996\u9875"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v0, "ifabtest"

    sget v1, Lc8/rin;->isType:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 181
    .local v7, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    .end local v7    # "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v0, "y1."

    goto :goto_0

    .line 184
    :cond_3
    const-string/jumbo v0, "\u4f18\u9177\u9996\u9875"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 186
    .restart local p3    # "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "ifabtest"

    sget v1, Lc8/rin;->isType:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ifabtest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/rin;->isType:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "========\u7edf\u8ba1\u4fe1\u606f==name== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==page== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==\u6269\u5c55\u53c2\u6570== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==\u52a0\u7801\u793a\u4f8b== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lc8/rin;->pageOnclickTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 196
    return-void
.end method

.method public TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p4, "encodeStr"    # Ljava/lang/String;
    .param p5, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lc8/rin;->pageOnclickTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 165
    return-void
.end method

.method public TrackCommonClickEventWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p4, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 237
    .local p3, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 238
    .local v5, "extendParameter":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lc8/VLj;->isTablet:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "y4."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 240
    const-string/jumbo v0, "refercode"

    invoke-virtual {v5, v0, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    if-eqz p3, :cond_2

    .line 244
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 245
    .local v7, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 247
    .local v8, "obj":Ljava/util/Map$Entry;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v8    # "obj":Ljava/util/Map$Entry;
    :cond_1
    const-string/jumbo v0, "y1."

    goto :goto_0

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LogIn and UID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "userNumberId"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Syo;->wz(Ljava/lang/String;)V

    .line 255
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v4, ""

    const-string/jumbo v0, "userNumberId"

    invoke-static {v0}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lc8/rin;->trackExtendCustomEventWithUidImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public detailCardSubscribeClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "uidBeen"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;
    .param p6, "playListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1386
    .local p7, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1387
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.page.intro_subscribe-binge"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string/jumbo v1, "uidBeen"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    const-string/jumbo v1, "playListId"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-virtual {v0, p7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1395
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "intro_subscribe-binge"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1397
    return-void
.end method

.method public detailDownloadClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 1515
    const-string/jumbo v1, "DownloadClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1516
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u7f13\u5b58\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.downloadClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1518
    return-void
.end method

.method public detailDownloadClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playListId"    # Ljava/lang/String;

    .prologue
    .line 1526
    const-string/jumbo v1, "DownloadClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1527
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v1, "playlistid"

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "playListId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u7f13\u5b58\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.downloadClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method public detailFavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 1538
    const-string/jumbo v1, "favorClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1539
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1541
    const-string/jumbo v1, "showId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    :cond_0
    :goto_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u6536\u85cf\u70b9\u51fb"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.favorClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1548
    return-void

    .line 1542
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1543
    const-string/jumbo v1, "playlistId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1544
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1545
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public detailRecommendVideosClick(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p3, "hashmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detail.recommendCard.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "encode":Ljava/lang/String;
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u63a8\u8350\u5361\u7247\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u8be6\u60c5\u9875"

    invoke-virtual {v1, v2, v3, p3, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method public detailShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "shareTo"    # Ljava/lang/String;

    .prologue
    .line 1417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1418
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "shareClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    const/16 v1, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1423
    const-string/jumbo v1, "shareto"

    invoke-static {p3}, Lc8/lSh;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u89c6\u9891\u5206\u4eab"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.shareClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public detailShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "shareTo"    # Ljava/lang/String;
    .param p4, "playListid"    # Ljava/lang/String;

    .prologue
    .line 1430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1431
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "shareClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    const-string/jumbo v1, "playlistid"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##detailShareClick## playListid::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    const/16 v1, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1438
    const-string/jumbo v1, "shareto"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :cond_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u4e92\u52a8\u533a\u89c6\u9891\u5206\u4eab"

    const-string/jumbo v3, "\u89c6\u9891\u8be6\u60c5Tab"

    const-string/jumbo v4, "profileCard.shareClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method public detailSubscribClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "uidBeen"    # Ljava/lang/String;
    .param p5, "cn"    # Ljava/lang/String;
    .param p6, "playListId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 1369
    .local p7, "track_info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1370
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2h08.8165823.subscribe.sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string/jumbo v1, "uidBeen"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    const-string/jumbo v1, "playListId"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    invoke-virtual {v0, p7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1378
    const-string/jumbo v1, "page_playpage"

    const-string/jumbo v2, "sub"

    invoke-static {v1, v2, v0}, Lc8/LHg;->utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1380
    return-void
.end method

.method public endNewSession(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lc8/rin;->endSession(Landroid/app/Activity;)V

    .line 157
    return-void
.end method

.method public getAaid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/rin;->aaid:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonVideoValue(Lcom/youku/vo/CommonVideoInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "mCommonVideoInfo"    # Lcom/youku/vo/CommonVideoInfo;

    .prologue
    .line 549
    const-string/jumbo v2, ""

    .line 550
    .local v2, "valueResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v1

    .line 552
    .local v1, "targetKey":I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 554
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 581
    .end local v1    # "targetKey":I
    :cond_0
    :goto_0
    return-object v2

    .line 555
    .restart local v1    # "targetKey":I
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3

    .line 562
    :cond_2
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getGameCenterVideoInfo()Lcom/youku/vo/GameCenterVideoInfo;

    .line 566
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 567
    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 568
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 569
    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 570
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 571
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 572
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getPlaylistid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 573
    :cond_6
    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 574
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 575
    :cond_7
    const/16 v3, 0xa

    if-ne v1, v3, :cond_8

    .line 576
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 578
    :cond_8
    invoke-virtual {p1}, Lcom/youku/vo/CommonVideoInfo;->getVideo_id()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCurrentNavigationActivityParameter(Landroid/app/Activity;)Ljava/util/HashMap;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public getHashMapDetailPragromCachePrameter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "vidStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3069
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3070
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3071
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 3072
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3074
    :cond_0
    const-string/jumbo v3, "vid"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    const-string/jumbo v3, "sid"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    return-object v0
.end method

.method public getHashMapDetailRecommendViedosParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1569
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    return-object v0
.end method

.method public getHashMapHomePageChannelStyleValue(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "targetKey"    # I
    .param p2, "info"    # Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;
    .param p3, "titleStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lc8/rin;->getHomepageGameTypePareter(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/pin;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const-string/jumbo v1, "gametype"

    invoke-virtual {p0, p1, p2}, Lc8/rin;->getHomepageGameTypePareter(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    const-string/jumbo v1, "cn"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-object v0
.end method

.method public getHashMapHomePageEncodingValue(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;II)Ljava/lang/String;
    .locals 3
    .param p1, "targetKey"    # I
    .param p2, "info"    # Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;
    .param p3, "location"    # I
    .param p4, "box_id"    # I

    .prologue
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "home.posterVideoClick_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 463
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getTypeVideo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getTypeVideo()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lc8/rin;->getHomePageHashMapValue(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "resultStr":Ljava/lang/String;
    return-object v0
.end method

.method public getHashMapHomePageStyleValue(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/util/HashMap;
    .locals 3
    .param p1, "targetKey"    # I
    .param p2, "info"    # Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    return-object v0
.end method

.method public getHashMapLoginFrom()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1618
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1619
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    return-object v0
.end method

.method public getHashMapLoginWindow()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1626
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    return-object v0
.end method

.method public getHashMapPushVideoExtendPrameter(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "titleStr"    # Ljava/lang/String;
    .param p2, "midStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-object v0
.end method

.method public getHomePageChannelNameByGroup(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    const-string/jumbo v1, "cn"

    invoke-static {v1, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 386
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public getHomePageChannelNameByGroupForPlayList(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    const-string/jumbo v1, "sp"

    invoke-static {v1, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 398
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public getHomePageHashMapKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "targetKey"    # I

    .prologue
    .line 471
    const-string/jumbo v0, ""

    .line 472
    .local v0, "keyResult":Ljava/lang/String;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 473
    const-string/jumbo v0, "url"

    .line 489
    :cond_0
    :goto_0
    return-object v0

    .line 474
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 477
    :cond_2
    const-string/jumbo v0, "game_id"

    goto :goto_0

    .line 478
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 479
    const-string/jumbo v0, "vid"

    goto :goto_0

    .line 480
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 481
    const-string/jumbo v0, "show_id"

    goto :goto_0

    .line 482
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 483
    const-string/jumbo v0, "playlist_id"

    goto :goto_0

    .line 484
    :cond_6
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    .line 485
    const-string/jumbo v0, "videolistid"

    goto :goto_0

    .line 486
    :cond_7
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 487
    const-string/jumbo v0, "live_id"

    goto :goto_0
.end method

.method public getHomePageHashMapValue(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "targetKey"    # I
    .param p2, "info"    # Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;

    .prologue
    .line 516
    const-string/jumbo v1, ""

    .line 517
    .local v1, "valueResult":Ljava/lang/String;
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 519
    :try_start_0
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoOpenUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 541
    :cond_0
    :goto_0
    return-object v1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v2, 0x9

    if-eq p1, v2, :cond_2

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    .line 526
    :cond_2
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    iget-object v2, v2, Lcom/youku/vo/GameCenterVideoInfo;->game_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    iget-object v1, v2, Lcom/youku/vo/GameCenterVideoInfo;->game_id:Ljava/lang/String;

    goto :goto_0

    .line 530
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 531
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoTid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 532
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 533
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoTid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 534
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 535
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoPlayListId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 536
    :cond_6
    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    .line 537
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoTid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 538
    :cond_7
    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    .line 539
    invoke-virtual {p2}, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->getVideoTid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHomepageGameTypePareter(ILcom/youku/vo/ScrollerInfoVo$ScrollerInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "targetKey"    # I
    .param p2, "info"    # Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;

    .prologue
    .line 500
    const-string/jumbo v0, ""

    .line 501
    .local v0, "valueResult":Ljava/lang/String;
    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 504
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    iget-object v1, v1, Lcom/youku/vo/GameCenterVideoInfo;->game_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p2, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    iget-object v0, v1, Lcom/youku/vo/GameCenterVideoInfo;->game_type:Ljava/lang/String;

    .line 509
    :cond_1
    return-object v0
.end method

.method public getSearchInterfaceParatemter(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isNeedAaid"    # Z

    .prologue
    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 636
    const-string/jumbo v1, "&aaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0}, Lc8/rin;->getAaid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_0
    const-string/jumbo v1, "&brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    sget-object v1, Lc8/NHg;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string/jumbo v1, "&btype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    sget-object v1, Lc8/NHg;->btype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string/jumbo v1, "&kref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v1, p0, Lc8/rin;->krefValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringForChannelRankVideo(ILcom/youku/vo/CommonVideoInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .param p2, "mCommonVideoInfo"    # Lcom/youku/vo/CommonVideoInfo;

    .prologue
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "top.videoClick."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    invoke-virtual {p2}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lc8/rin;->getCommonVideoValue(Lcom/youku/vo/CommonVideoInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getStringForChannelSpecial(ILjava/lang/String;Lcom/youku/vo/CommonVideoInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .param p2, "titleName"    # Ljava/lang/String;
    .param p3, "mCommonVideoInfo"    # Lcom/youku/vo/CommonVideoInfo;

    .prologue
    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "channelSelect.specialClick."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-virtual {p3}, Lcom/youku/vo/CommonVideoInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lc8/rin;->getCommonVideoValue(Lcom/youku/vo/CommonVideoInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public getStringForChannelSubClick(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .param p2, "titleName"    # Ljava/lang/String;

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "channelSelect.channelClick__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public html5ShareClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;

    .prologue
    .line 1500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1501
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "interact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "shareClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string/jumbo v1, "shareType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string/jumbo v1, "sharefrom"

    sget-object v2, Lc8/tin;->shareFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "h5\u9875\u62c9\u8d77\u5206\u4eab\u5e76\u6210\u529f"

    const-string/jumbo v3, "\u5185\u5d4c\u9875\u5411\u5916\u5206\u4eab"

    const-string/jumbo v4, "htmlShare.shareClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lc8/VLj;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lc8/LHg;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public initOtherTrack()V
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lc8/rin;->getApiMUT()V

    .line 140
    return-void
.end method

.method public initTrack(Z)V
    .locals 3
    .param p1, "forceDisableLocation"    # Z

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======IstaticManager========Youku.isShowLog=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/VLj;->isShowLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======IstaticManager========IStaticUtil.isDebugOpen=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/pin;->isDebugOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======IstaticManager========IStaticUtil.isTestOpen=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/pin;->isTestOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======IstaticManager========IStaticUtil.isTestHostOpen=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/pin;->isTestHostOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=======IstaticManager========IStaticUtil.isLocationOpen=========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/pin;->isLocationOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    sget-boolean v0, Lc8/pin;->isDebugOpen:Z

    invoke-virtual {p0, v0}, Lc8/rin;->setDebug(Z)V

    .line 126
    sget-boolean v0, Lc8/pin;->isTestOpen:Z

    invoke-virtual {p0, v0}, Lc8/rin;->setTestHost(Z)V

    .line 127
    sget-boolean v0, Lc8/pin;->isTestHostOpen:Z

    invoke-virtual {p0, v0}, Lc8/rin;->setTest(Z)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/rin;->setTrackLocation(Z)V

    .line 133
    :goto_0
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, v0, v1}, Lc8/rin;->setContinueSessionMillis(J)V

    .line 134
    sget-object v0, Lc8/rin;->context:Landroid/content/Context;

    sget-object v1, Lc8/VLj;->User_Agent:Ljava/lang/String;

    sget-object v2, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lc8/rin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 131
    :cond_0
    sget-boolean v0, Lc8/pin;->isLocationOpen:Z

    invoke-virtual {p0, v0}, Lc8/rin;->setTrackLocation(Z)V

    goto :goto_0
.end method

.method public liveTrackLoginClick()V
    .locals 4

    .prologue
    .line 1737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1738
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    const-string/jumbo v1, "\u70b9\u51fb\u767b\u5f55\u6309\u94ae\u4ee5\u53c2\u4e0e\u5f39\u5e55\u4e92\u52a8"

    const-string/jumbo v2, "\u5f39\u5e55\u76f4\u64ad"

    const-string/jumbo v3, "Playerlivebg.loginClick"

    invoke-virtual {p0, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1740
    return-void
.end method

.method public payVipOrBugTrack(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "showidStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1676
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    const-string/jumbo v1, "showid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    return-object v0
.end method

.method public playerCollectClickStatics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "showid"    # Ljava/lang/String;
    .param p3, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 800
    const-string/jumbo v1, "favorClick"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 801
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 803
    const-string/jumbo v1, "showid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_0
    :goto_0
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u5927\u64ad\u653e\u5668\u6536\u85cf\u70b9\u51fb"

    const-string/jumbo v3, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v4, "player.favorClick"

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 810
    return-void

    .line 804
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    const-string/jumbo v1, "playlistId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 806
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public playerDlnaIconClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "vidStr"    # Ljava/lang/String;

    .prologue
    .line 1775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1776
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const-string/jumbo v1, "\u7528\u6237\u9009\u62e9\u6295\u5c04\u5230\u67d0\u4e2a\u8bbe\u5907"

    const-string/jumbo v2, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v3, "player.DLNAClick"

    invoke-virtual {p0, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1778
    return-void
.end method

.method public playerDlnaSuccessClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "vidStr"    # Ljava/lang/String;

    .prologue
    .line 1783
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1784
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const-string/jumbo v1, "\u6295\u5c04\u6210\u529f\uff0c\u5f00\u59cb\u64ad\u653e"

    const-string/jumbo v2, "\u5927\u5c4f\u64ad\u653e"

    const-string/jumbo v3, "player.DLNASucc"

    invoke-virtual {p0, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1786
    return-void
.end method

.method public recommentForMeItemVideoClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/lang/String;

    .prologue
    .line 1728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e3a\u6211\u63a8\u8350\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, "clickValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recommendForMe.videoClick."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1730
    .local v1, "encode":Ljava/lang/String;
    const-string/jumbo v2, "\u63a8\u8350\u9875"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method public recommentForMePosterClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/lang/String;

    .prologue
    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e3a\u6211\u63a8\u8350\u8f6e\u64ad\u56fe\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1692
    .local v0, "clickValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recommendForMe.PostervideoClick."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "encode":Ljava/lang/String;
    const-string/jumbo v2, "\u63a8\u8350\u9875"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1695
    return-void
.end method

.method public recommentForMePosterFavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/lang/String;

    .prologue
    .line 1712
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1713
    .local v2, "stringHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lc8/rin;->getHomePageHashMapKey(I)Ljava/lang/String;

    move-result-object v3

    .line 1714
    .local v3, "typeStr":Ljava/lang/String;
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e3a\u6211\u63a8\u8350\u8f6e\u64ad\u56fe\u89c6\u9891\u6536\u85cf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u70b9\u51fb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1716
    .local v0, "clickValue":Ljava/lang/String;
    const-string/jumbo v1, "recommendForMe.PostervideofavorClick"

    .line 1717
    .local v1, "encode":Ljava/lang/String;
    const-string/jumbo v4, "\u63a8\u8350\u9875"

    invoke-virtual {p0, v0, v4, v2, v1}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method public recommentForMePosterShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/lang/String;

    .prologue
    .line 1700
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1701
    .local v2, "stringHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lc8/rin;->getHomePageHashMapKey(I)Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, "typeStr":Ljava/lang/String;
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    const-string/jumbo v1, "recommendForMe.PostervideoshareClick"

    .line 1704
    .local v1, "encode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u4e3a\u6211\u63a8\u8350\u8f6e\u64ad\u56fe\u89c6\u9891\u5206\u4eab"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u70b9\u51fb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "clickValue":Ljava/lang/String;
    const-string/jumbo v4, "\u63a8\u8350\u9875"

    invoke-virtual {p0, v0, v4, v2, v1}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1708
    return-void
.end method

.method public registTrack()V
    .locals 4

    .prologue
    .line 1633
    const-string/jumbo v1, "regSuccess"

    const-string/jumbo v2, "interact"

    invoke-static {v1, v2}, Lc8/rin;->getExtendMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1634
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "regType"

    sget-object v2, Lc8/tin;->registType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-string/jumbo v1, "from"

    invoke-direct {p0}, Lc8/rin;->getLoginFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const-string/jumbo v1, "\u767b\u5f55\u9875\u6ce8\u518c\u6210\u529f"

    const-string/jumbo v2, "\u767b\u5f55\u9875"

    const-string/jumbo v3, "login.register"

    invoke-virtual {p0, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method public setAaid(Ljava/lang/String;)V
    .locals 0
    .param p1, "aaid"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/rin;->aaid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCidStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "cnStr"    # Ljava/lang/String;

    .prologue
    .line 1452
    iput-object p1, p0, Lc8/rin;->cnIdStr:Ljava/lang/String;

    .line 1453
    return-void
.end method

.method public setKrefValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "krefValue"    # Ljava/lang/String;

    .prologue
    .line 649
    iput-object p1, p0, Lc8/rin;->krefValue:Ljava/lang/String;

    .line 650
    return-void
.end method

.method public setShareFromSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareFromSource"    # Ljava/lang/String;

    .prologue
    .line 1448
    iput-object p1, p0, Lc8/rin;->shareFromSource:Ljava/lang/String;

    .line 1449
    return-void
.end method

.method public startNewSession(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lc8/rin;->getTrackNameByActivity(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/rin;->startSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public trackCallupWebviewEnter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 3023
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3024
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    const-string/jumbo v0, "callup.callupWebview"

    .line 3027
    .local v0, "encode":Ljava/lang/String;
    const-string/jumbo v2, "\u5916\u90e8\u5524\u8d77\u5230H5"

    const-string/jumbo v3, "\u5524\u8d77"

    invoke-virtual {p0, v2, v3, v1, v0}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 3028
    return-void
.end method

.method public trackCommonBundleEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "clickname"    # Ljava/lang/String;
    .param p2, "clickpage"    # Ljava/lang/String;
    .param p4, "encodeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 3081
    .local p3, "extendMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 3082
    return-void
.end method

.method public trackCommonClickEventForA3(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 229
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    const-string/jumbo v4, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/rin;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 230
    return-void
.end method

.method public trackH5CallUp(Landroid/net/Uri;I)V
    .locals 16
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "pagetype"    # I

    .prologue
    .line 3031
    const-string/jumbo v1, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3032
    .local v11, "source":Ljava/lang/String;
    const-string/jumbo v1, "ua"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3033
    .local v14, "ua":Ljava/lang/String;
    const-string/jumbo v1, "refer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3034
    .local v9, "refer":Ljava/lang/String;
    const-string/jumbo v1, "activeby"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3035
    .local v7, "activeby":Ljava/lang/String;
    const-string/jumbo v1, "cookieid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3036
    .local v8, "cookieid":Ljava/lang/String;
    const-string/jumbo v1, "tuid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3037
    .local v13, "tuid":Ljava/lang/String;
    const-string/jumbo v1, "special"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3038
    .local v12, "special":Ljava/lang/String;
    const-string/jumbo v1, "referurl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3039
    .local v10, "referurl":Ljava/lang/String;
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3041
    .local v15, "url":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3042
    .local v6, "aHitMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "eventType"

    const-string/jumbo v2, "appactive"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3044
    const-string/jumbo v1, "source"

    invoke-virtual {v6, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    :cond_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3046
    const-string/jumbo v1, "ua"

    invoke-virtual {v6, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3047
    :cond_1
    const-string/jumbo v1, "pagetype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3049
    const-string/jumbo v1, "refer"

    invoke-virtual {v6, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    :cond_2
    const-string/jumbo v1, "activeby"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v7, "1"

    .end local v7    # "activeby":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3052
    const-string/jumbo v1, "cookieid"

    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3054
    const-string/jumbo v1, "tuid"

    invoke-virtual {v6, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3056
    const-string/jumbo v1, "special"

    invoke-virtual {v6, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3058
    const-string/jumbo v1, "referurl"

    invoke-virtual {v6, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3059
    :cond_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3060
    const-string/jumbo v1, "url"

    invoke-virtual {v6, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    :cond_8
    const-string/jumbo v1, ""

    const/16 v2, 0x2ef6

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static/range {v1 .. v6}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3062
    return-void
.end method

.method public trackLoginPageLoginClick()V
    .locals 4

    .prologue
    .line 324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "eventType"

    const-string/jumbo v3, "interact"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "loginSuccess"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v2, "loginType"

    sget-object v3, Lc8/tin;->loginType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v2, "loginPath"

    sget-object v3, Lc8/tin;->loginPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v2, "loginSource"

    sget-object v3, Lc8/tin;->loginSource:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v2, "fromhtml"

    sget-object v3, Lc8/tin;->fromhtml:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v0, "login.loginClick"

    .line 333
    .local v0, "encodeStr":Ljava/lang/String;
    sget-object v2, Lc8/tin;->loginType:Ljava/lang/String;

    const-string/jumbo v3, "2"

    if-eq v2, v3, :cond_0

    .line 334
    const-string/jumbo v2, "\u6210\u529f\u767b\u5f55"

    const-string/jumbo v3, "\u767b\u5f55\u9875"

    invoke-virtual {p0, v2, v3, v1, v0}, Lc8/rin;->TrackCommonClickEventWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public trackMySubscribeEnter(Ljava/lang/String;)V
    .locals 4
    .param p1, "pagetype"    # Ljava/lang/String;

    .prologue
    .line 1748
    const-string/jumbo v0, "\u8fdb\u5165h5\u8ba2\u9605\u9875"

    const-string/jumbo v1, "h5\u8ba2\u9605\u9875"

    const-string/jumbo v2, "pagetype"

    .line 1750
    invoke-static {v2, p1}, Lc8/rin;->getHashMapStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v3, "hsub.hsubShow"

    .line 1748
    invoke-virtual {p0, v0, v1, v2, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1752
    return-void
.end method

.method public trackMySubscribeQuit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pagetype"    # Ljava/lang/String;
    .param p2, "quitfrom"    # Ljava/lang/String;

    .prologue
    .line 1762
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1763
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "pagetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    const-string/jumbo v1, "quitfrom"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    const-string/jumbo v1, "\u9000\u51fah5\u8ba2\u9605\u9875"

    const-string/jumbo v2, "h5\u8ba2\u9605\u9875"

    const-string/jumbo v3, "hsub.hsubQuit"

    invoke-virtual {p0, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1770
    return-void
.end method

.method public trackOtherPersonInfoEnter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "fromehtml"    # Ljava/lang/String;

    .prologue
    .line 2434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2435
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "fromhtml"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    sget-object v1, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v2, "\u8fdb\u5165\u4ed6\u4eba\u7a7a\u95f4\u9875"

    const-string/jumbo v3, "\u4ed6\u4eba\u4e2a\u4eba\u7a7a\u95f4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "person.spaceShow.17_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2437
    return-void
.end method

.method public trackPageLoadEvent(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "pltypeStr"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endtime"    # J

    .prologue
    const/4 v3, 0x0

    .line 592
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v5, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    .line 594
    .local v2, "pltypeResult":Ljava/lang/String;
    const-string/jumbo v0, "appload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const-string/jumbo v2, "app\u542f\u52a8"

    .line 619
    :cond_0
    :goto_0
    const-string/jumbo v0, "pltype"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v0, "st"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v0, "et"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v6, p4, p2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v1, Lc8/rin;->context:Landroid/content/Context;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lc8/rin;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 626
    return-void

    .line 596
    :cond_1
    const-string/jumbo v0, "homeload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    const-string/jumbo v2, "\u9996\u9875\u52a0\u8f7d"

    goto :goto_0

    .line 598
    :cond_2
    const-string/jumbo v0, "channelListLoad"

    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    const-string/jumbo v2, "\u5927\u8bcd\u9875\u52a0\u8f7d"

    goto :goto_0

    .line 601
    :cond_3
    const-string/jumbo v0, "channelload"

    .line 602
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    const-string/jumbo v2, "\u9891\u9053\u9875\u52a0\u8f7d"

    goto/16 :goto_0

    .line 606
    :cond_4
    const-string/jumbo v0, "usercenter"

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 608
    const-string/jumbo v2, "\u7528\u6237\u4e2d\u5fc3\u52a0\u8f7d"

    goto/16 :goto_0

    .line 609
    :cond_5
    const-string/jumbo v0, "searchLoad"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 611
    const-string/jumbo v2, "\u641c\u7d22\u9875\u52a0\u8f7d"

    goto/16 :goto_0

    .line 612
    :cond_6
    const-string/jumbo v0, "searchResultLoad"

    .line 613
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    const-string/jumbo v2, "\u641c\u7d22\u7ed3\u679c\u9875\u52a0\u8f7d"

    goto/16 :goto_0

    .line 615
    :cond_7
    const-string/jumbo v0, "detailload"

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string/jumbo v2, "\u8be6\u60c5\u9875\u52a0\u8f7d"

    goto/16 :goto_0
.end method

.method public trackShareClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "shareType"    # Ljava/lang/String;
    .param p3, "shareTo"    # Ljava/lang/String;
    .param p4, "playListid"    # Ljava/lang/String;

    .prologue
    .line 1458
    sget-object v2, Lc8/tin;->SHARE_PAGE:Ljava/lang/String;

    .line 1459
    .local v2, "sharePage":Ljava/lang/String;
    sget-object v1, Lc8/tin;->SHARE_CLICK:Ljava/lang/String;

    .line 1460
    .local v1, "shareClickEvent":Ljava/lang/String;
    sget-object v3, Lc8/tin;->SHARE_ENCODE_VALUE:Ljava/lang/String;

    .line 1462
    .local v3, "shareReferCode":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1463
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "eventType"

    const-string/jumbo v5, "interact"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string/jumbo v4, "actionType"

    const-string/jumbo v5, "shareClick"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const-string/jumbo v4, "vid"

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    const-string/jumbo v4, "shareType"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    const-string/jumbo v4, "playlistid"

    invoke-virtual {v0, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "##detailShareClick## playListid::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1469
    const/16 v4, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1470
    const-string/jumbo v4, "shareto"

    invoke-virtual {v0, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_0
    const-string/jumbo v4, "player.video.endpage"

    iget-object v5, p0, Lc8/rin;->shareFromSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1473
    const-string/jumbo v4, "cid"

    iget-object v5, p0, Lc8/rin;->cnIdStr:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :cond_1
    const-string/jumbo v4, "player.video.endpage"

    iget-object v5, p0, Lc8/rin;->shareFromSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1477
    sget-object v2, Lc8/tin;->VIDEO_PLAY_ENDPAGE:Ljava/lang/String;

    .line 1478
    sget-object v1, Lc8/tin;->VIDEO_PLAY_END_SHARE_CLICK:Ljava/lang/String;

    .line 1479
    sget-object v3, Lc8/tin;->VIDEO_PLAY_END_SHARE_ENCODE_VALUE:Ljava/lang/String;

    .line 1482
    :cond_2
    const-string/jumbo v4, "player.covershare"

    iget-object v5, p0, Lc8/rin;->shareFromSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1483
    const-string/jumbo v4, "cid"

    iget-object v5, p0, Lc8/rin;->cnIdStr:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    const-string/jumbo v2, "\u60ac\u505c\u754c\u9762"

    .line 1485
    const-string/jumbo v1, "\u60ac\u505c\u754c\u9762\u70b9\u51fb\u5206\u4eab"

    .line 1486
    const-string/jumbo v3, "player.covershare"

    .line 1489
    :cond_3
    sget-object v4, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v4, v1, v2, v0, v3}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1490
    return-void
.end method
