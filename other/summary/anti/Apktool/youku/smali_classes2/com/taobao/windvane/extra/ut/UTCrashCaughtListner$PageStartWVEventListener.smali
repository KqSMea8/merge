.class public Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;
.super Ljava/lang/Object;
.source "UTCrashCaughtListner.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageStartWVEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;


# direct methods
.method public constructor <init>(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "context"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "data"    # [Ljava/lang/Object;

    .prologue
    .line 32
    sparse-switch p1, :sswitch_data_0

    .line 61
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 34
    :sswitch_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 35
    iget-object v0, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 36
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {v1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {v1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 38
    iget-object v1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {v1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {v1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$000(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner$PageStartWVEventListener;->this$0:Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-static {v1, v0}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->access$102(Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "WV_URL_CHANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current Url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "2"

    sput-object v1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    goto :goto_0

    .line 49
    :sswitch_1
    const-string/jumbo v1, "1"

    sput-object v1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    goto :goto_0

    .line 54
    :sswitch_2
    const-string/jumbo v1, "0"

    sput-object v1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;->wv_currentStatus:Ljava/lang/String;

    goto :goto_0

    .line 32
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_2
        0xbbb -> :sswitch_1
    .end sparse-switch
.end method
