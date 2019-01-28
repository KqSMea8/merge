.class public final Lc8/jWp;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lc8/tWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWp;->blackhole()Lc8/tWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lc8/wWp;->NONE:Lc8/wWp;

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 0
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1, p2, p3}, Lc8/YVp;->skip(J)V

    .line 201
    return-void
.end method
