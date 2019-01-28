.class public Lc8/hob;
.super Ljava/lang/Object;
.source "ALPJumpFailedStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gob;
    }
.end annotation


# instance fields
.field public degradeH5Url:Ljava/lang/String;

.field public failureListener:Lc8/gob;

.field public mode:I

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lc8/hob;->mode:I

    .line 30
    return-void
.end method
