.class public Lc8/RXn;
.super Ljava/lang/Object;
.source "GetInfoResult.java"


# instance fields
.field public connectStat:Lc8/QXn;

.field public data:Ljava/lang/String;

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lc8/QXn;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p3, "stat"    # Lc8/QXn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lc8/QXn;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "head":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lc8/RXn;->data:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lc8/RXn;->header:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lc8/RXn;->connectStat:Lc8/QXn;

    .line 15
    iput-object p1, p0, Lc8/RXn;->data:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lc8/RXn;->header:Ljava/util/Map;

    .line 17
    iput-object p3, p0, Lc8/RXn;->connectStat:Lc8/QXn;

    .line 18
    return-void
.end method
