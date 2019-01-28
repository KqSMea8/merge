.class public Lc8/uib;
.super Ljava/lang/Object;
.source "LoginActivityResultHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vib;->onSuccess(Lc8/ahb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/vib;


# direct methods
.method constructor <init>(Lc8/vib;)V
    .locals 0
    .param p1, "this$1"    # Lc8/vib;

    .prologue
    .line 154
    iput-object p1, p0, Lc8/uib;->this$1:Lc8/vib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lc8/uib;->this$1:Lc8/vib;

    iget-object v0, v0, Lc8/vib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    sput-object v0, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 158
    iget-object v0, p0, Lc8/uib;->this$1:Lc8/vib;

    iget-object v1, v0, Lc8/vib;->this$0:Lc8/xib;

    iget-object v0, p0, Lc8/uib;->this$1:Lc8/vib;

    iget-object v0, v0, Lc8/vib;->val$savedActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lc8/oib;->E_H5_LOGIN_SUCCESS:Ljava/lang/String;

    iget-object v3, p0, Lc8/uib;->this$1:Lc8/vib;

    iget-object v3, v3, Lc8/vib;->val$trustLoginCallback:Lc8/xgb;

    invoke-static {v1, v0, v2, v3}, Lc8/xib;->access$100(Lc8/xib;Landroid/app/Activity;Ljava/lang/String;Lc8/xgb;)V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method
