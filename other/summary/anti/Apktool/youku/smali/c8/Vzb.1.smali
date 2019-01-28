.class public Lc8/Vzb;
.super Lc8/Xzb;
.source "TimeStampEntity.java"


# annotations
.annotation runtime Lc8/fAb;
    value = "timestamp_config"
.end annotation


# instance fields
.field public namespace:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "namespace"
    .end annotation
.end field

.field public timestamp:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/Vzb;->namespace:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lc8/Vzb;->timestamp:Ljava/lang/String;

    .line 26
    return-void
.end method
