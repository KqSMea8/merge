.class public Lc8/Dnb;
.super Ljava/lang/Object;
.source "ALPConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cnb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public pullServiceConfig(Ljava/lang/String;Lc8/Bnb;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "configPullCallback"    # Lc8/Bnb;

    .prologue
    .line 21
    new-instance v0, Lc8/Cnb;

    invoke-direct {v0, p0, p1, p2}, Lc8/Cnb;-><init>(Lc8/Dnb;Ljava/lang/String;Lc8/Bnb;)V

    invoke-static {v0}, Lc8/Inb;->postAsyncTask(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method
