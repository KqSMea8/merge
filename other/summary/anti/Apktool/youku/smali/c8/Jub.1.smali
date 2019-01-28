.class public Lc8/Jub;
.super Ljava/lang/Object;
.source "WXConnectionFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lc8/Iub;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Gub;

    invoke-direct {v0, p0}, Lc8/Gub;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
