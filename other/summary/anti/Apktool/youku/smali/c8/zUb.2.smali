.class public Lc8/zUb;
.super Lc8/BUb;
.source "MotuErrorInfoBase.java"


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public isSuccess:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/BUb;-><init>()V

    return-void
.end method


# virtual methods
.method public toErrorInfoMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/zUb;->isSuccess:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lc8/zUb;->isSuccess:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string/jumbo v1, "isSuccess"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string/jumbo v1, "isSuccess"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
