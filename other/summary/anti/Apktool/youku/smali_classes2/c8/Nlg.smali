.class public abstract Lc8/Nlg;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected a:Lc8/zlg;

.field protected final b:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    new-instance v0, Lc8/Alg;

    invoke-direct {v0, p0}, Lc8/Alg;-><init>(Lc8/Nlg;)V

    iput-object v0, p0, Lc8/Nlg;->b:Landroid/webkit/WebChromeClient;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lc8/zlg;

    invoke-direct {v0}, Lc8/zlg;-><init>()V

    iput-object v0, p0, Lc8/Nlg;->a:Lc8/zlg;

    .line 30
    return-void
.end method
