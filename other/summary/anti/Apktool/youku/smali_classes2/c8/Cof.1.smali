.class public abstract Lc8/Cof;
.super Lc8/yof;
.source "BaseNavPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "nav"

    aput-object v2, v0, v1

    const-string/jumbo v1, "nav"

    invoke-direct {p0, v0, v1}, Lc8/yof;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
