.class public abstract Lc8/abf;
.super Lc8/dbf;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Snapshot"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lc8/dbf;-><init>(J)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0}, Lc8/dbf;->close()V

    return-void
.end method
