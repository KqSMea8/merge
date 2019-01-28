.class public Lc8/uUf;
.super Ljava/lang/Object;
.source "HotpatchReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vUf;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vUf;


# direct methods
.method constructor <init>(Lc8/vUf;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/uUf;->this$0:Lc8/vUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/tUf;->queryNewHotPatch(Z)V

    .line 53
    return-void
.end method
