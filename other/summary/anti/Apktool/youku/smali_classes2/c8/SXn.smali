.class public Lc8/SXn;
.super Ljava/lang/Object;
.source "MTopUpsRequest.java"


# static fields
.field public static final AD_PARAMS:Ljava/lang/String; = "ad_params"

.field public static final BIZ_PARAMS:Ljava/lang/String; = "biz_params"

.field public static final STEAL_PARAMS:Ljava/lang/String; = "steal_params"


# instance fields
.field public API_NAME:Ljava/lang/String;

.field public NEED_ECODE:Z

.field public NEED_SESSION:Z

.field public VERSION:Ljava/lang/String;

.field public adParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bizParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stealParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "mtop.youku.play.ups.appinfo.get"

    iput-object v0, p0, Lc8/SXn;->API_NAME:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/SXn;->VERSION:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/SXn;->NEED_ECODE:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/SXn;->NEED_SESSION:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SXn;->stealParamsMap:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SXn;->bizParamsMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/SXn;->adParamsMap:Ljava/util/Map;

    return-void
.end method
