.class public final Lc8/Ll;
.super Lc8/Ol;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintHelperApi24Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ol",
        "<",
        "Lc8/Ql;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lc8/Ql;

    invoke-direct {v0, p1}, Lc8/Ql;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lc8/Ol;-><init>(Landroid/support/v4/print/PrintHelperKitkat;)V

    .line 260
    return-void
.end method
