.class public Lc8/wUb;
.super Lc8/BUb;
.source "FluentInfo.java"


# instance fields
.field public playType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/BUb;-><init>()V

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
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
    .line 22
    invoke-virtual {p0}, Lc8/wUb;->toBaseMap()Ljava/util/Map;

    move-result-object v0

    .line 24
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/wUb;->playType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25
    const-string/jumbo v1, "playType"

    iget-object v2, p0, Lc8/wUb;->playType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-object v0
.end method
