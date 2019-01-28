.class public final Lc8/FYb;
.super Ljava/lang/Object;
.source "TrackingService.java"

# interfaces
.implements Lc8/KYb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PYb;Lc8/NYb;)Z
    .locals 1
    .param p1, "masterView"    # Landroid/view/View;
    .param p2, "selector"    # Ljava/lang/String;
    .param p3, "taskHandle"    # Ljava/lang/String;
    .param p4, "operationName"    # Ljava/lang/String;
    .param p5, "config"    # Lc8/PYb;
    .param p6, "task"    # Lc8/NYb;

    .prologue
    .line 251
    iget-object v0, p6, Lc8/NYb;->masterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p6, Lc8/NYb;->masterView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
