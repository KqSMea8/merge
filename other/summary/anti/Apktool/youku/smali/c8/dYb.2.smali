.class public final Lc8/dYb;
.super Ljava/lang/Object;
.source "AConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateCacheConfigTaskResult"
.end annotation


# instance fields
.field private final blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TConfigItemType;>;"
        }
    .end annotation
.end field

.field private final poplayerConfig:Ljava/lang/String;

.field final synthetic this$0:Lc8/eYb;


# direct methods
.method public constructor <init>(Lc8/eYb;)V
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lc8/dYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTaskResult;"
    iput-object p1, p0, Lc8/dYb;->this$0:Lc8/eYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/dYb;->configs:Ljava/util/List;

    .line 244
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/dYb;->poplayerConfig:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/dYb;->blackList:Ljava/util/List;

    .line 246
    return-void
.end method

.method public constructor <init>(Lc8/eYb;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p3, "poplayerConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TConfigItemType;>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lc8/dYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTaskResult;"
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<TConfigItemType;>;"
    .local p4, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/dYb;->this$0:Lc8/eYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lc8/dYb;->configs:Ljava/util/List;

    .line 238
    iput-object p3, p0, Lc8/dYb;->poplayerConfig:Ljava/lang/String;

    .line 239
    iput-object p4, p0, Lc8/dYb;->blackList:Ljava/util/List;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lc8/dYb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/dYb;

    .prologue
    .line 231
    iget-object v0, p0, Lc8/dYb;->configs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lc8/dYb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/dYb;

    .prologue
    .line 231
    iget-object v0, p0, Lc8/dYb;->poplayerConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/dYb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/dYb;

    .prologue
    .line 231
    iget-object v0, p0, Lc8/dYb;->blackList:Ljava/util/List;

    return-object v0
.end method
