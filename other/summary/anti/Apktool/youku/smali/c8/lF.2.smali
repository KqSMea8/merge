.class public Lc8/lF;
.super Ljava/lang/Thread;
.source "WVNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mF;->beep(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mF;

.field final synthetic val$repeatTime:I


# direct methods
.method constructor <init>(Lc8/mF;I)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lc8/lF;->this$0:Lc8/mF;

    iput p2, p0, Lc8/lF;->val$repeatTime:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 51
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 53
    .local v2, "toneGenerator":Landroid/media/ToneGenerator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lc8/lF;->val$repeatTime:I

    if-ge v1, v3, :cond_0

    .line 54
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 56
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 63
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 64
    return-void
.end method
