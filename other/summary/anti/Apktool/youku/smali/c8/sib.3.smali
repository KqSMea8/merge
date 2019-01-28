.class public Lc8/sib;
.super Ljava/lang/Object;
.source "LoginActivityResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xib;->handleCheck(Landroid/content/Intent;Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xib;

.field final synthetic val$savedActivity:Ljava/lang/ref/WeakReference;

.field final synthetic val$trustLoginCallback:Lc8/xgb;


# direct methods
.method constructor <init>(Lc8/xib;Ljava/lang/ref/WeakReference;Lc8/xgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xib;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/sib;->this$0:Lc8/xib;

    iput-object p2, p0, Lc8/sib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lc8/sib;->val$trustLoginCallback:Lc8/xgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lc8/sib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    sput-object v0, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 133
    iget-object v1, p0, Lc8/sib;->this$0:Lc8/xib;

    iget-object v0, p0, Lc8/sib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lc8/oib;->E_IV_LOGIN_FAILURE:Ljava/lang/String;

    iget-object v3, p0, Lc8/sib;->val$trustLoginCallback:Lc8/xgb;

    const/16 v4, 0x2775

    invoke-static {v1, v0, v2, v3, v4}, Lc8/xib;->access$000(Lc8/xib;Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;I)V

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method
