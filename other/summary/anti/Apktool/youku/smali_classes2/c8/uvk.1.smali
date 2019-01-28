.class public Lc8/uvk;
.super Ljava/lang/Object;
.source "FreeFlowActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vvk;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vvk;


# direct methods
.method constructor <init>(Lc8/vvk;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/uvk;->this$0:Lc8/vvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lc8/Dvk;->update(Ljava/lang/String;)Z

    .line 51
    return-void
.end method
