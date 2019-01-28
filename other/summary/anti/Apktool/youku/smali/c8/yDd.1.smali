.class public final Lc8/yDd;
.super Lc8/eEd;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lc8/tDd;


# direct methods
.method constructor <init>(Lc8/tDd;)V
    .locals 0

    invoke-direct {p0}, Lc8/eEd;-><init>()V

    iput-object p1, p0, Lc8/yDd;->a:Lc8/tDd;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b_()Ljava/util/Map;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/yDd;->a:Lc8/tDd;

    invoke-virtual {v0}, Lc8/tDd;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
