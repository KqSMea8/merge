.class public Lc8/BEb;
.super Ljava/lang/Object;
.source "AccurateSampleCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private type:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lc8/BEb;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lc8/BEb;->values:Ljava/util/Set;

    .line 19
    invoke-static {p3}, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->getAccurateType(I)Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    move-result-object v0

    iput-object v0, p0, Lc8/BEb;->type:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    .line 20
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/BEb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hitCondition(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    iget-object v2, p0, Lc8/BEb;->values:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    .local v0, "hit":Z
    iget-object v2, p0, Lc8/BEb;->type:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    sget-object v3, Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;->IN:Lcom/alibaba/appmonitor/sample/AccurateSampleCondition$AccurateType;

    if-eq v2, v3, :cond_0

    .line 30
    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
