.class public Lc8/Enb;
.super Ljava/lang/Object;
.source "ALPAppSchemeInfo.java"


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/String; = "com.alibaba.afc.action.gateway"

.field public static final DEFAULT_URI:Ljava/lang/String; = "alibc://afc.alibaba.com"


# instance fields
.field public action:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Enb;->action:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Enb;->category:Ljava/util/List;

    return-void
.end method

.method public static newDefaultSchemeInfo(Ljava/lang/String;)Lc8/Enb;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lc8/Enb;

    invoke-direct {v0}, Lc8/Enb;-><init>()V

    .line 49
    .local v0, "schemeInfo":Lc8/Enb;
    const-string/jumbo v1, "alibc://afc.alibaba.com"

    iput-object v1, v0, Lc8/Enb;->uri:Ljava/lang/String;

    .line 50
    iget-object v1, v0, Lc8/Enb;->action:Ljava/util/List;

    const-string/jumbo v2, "com.alibaba.afc.action.gateway"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iput-object p0, v0, Lc8/Enb;->packageName:Ljava/lang/String;

    .line 55
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Enb;->action:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Enb;->action:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/Enb;->action:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
