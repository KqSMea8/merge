.class public Lc8/FYe;
.super Landroid/os/Binder;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/GYe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalActivityRecord"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field activityInfo:Landroid/content/pm/ActivityInfo;

.field curState:I

.field final id:Ljava/lang/String;

.field instanceState:Landroid/os/Bundle;

.field intent:Landroid/content/Intent;

.field window:Landroid/view/Window;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lc8/FYe;->curState:I

    .line 47
    iput-object p1, p0, Lc8/FYe;->id:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lc8/FYe;->intent:Landroid/content/Intent;

    .line 49
    return-void
.end method
