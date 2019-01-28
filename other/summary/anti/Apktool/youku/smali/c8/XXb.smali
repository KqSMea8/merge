.class public final Lc8/XXb;
.super Landroid/os/Handler;
.source "AppLayerNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field private static final CANCEL_BY_APP_STATUS_IN_BACKGROUND:I = 0xa

.field private static final CANCEL_BY_INTO_BACKGROUND:I = 0x1


# instance fields
.field final synthetic this$0:Lc8/YXb;


# direct methods
.method private constructor <init>(Lc8/YXb;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lc8/XXb;->this$0:Lc8/YXb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/YXb;Lc8/VXb;)V
    .locals 0
    .param p1, "x0"    # Lc8/YXb;
    .param p2, "x1"    # Lc8/VXb;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lc8/XXb;-><init>(Lc8/YXb;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v0, p0, Lc8/XXb;->this$0:Lc8/YXb;

    invoke-virtual {v0}, Lc8/YXb;->handleIntoBackground()V

    goto :goto_0

    .line 102
    :sswitch_1
    iget-object v0, p0, Lc8/XXb;->this$0:Lc8/YXb;

    invoke-virtual {v0}, Lc8/YXb;->handleBackgroundCheck()V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
