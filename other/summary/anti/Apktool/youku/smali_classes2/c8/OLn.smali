.class public Lc8/OLn;
.super Landroid/os/Handler;
.source "AliMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QLn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field mp:Lc8/QLn;

.field final synthetic this$0:Lc8/QLn;


# direct methods
.method public constructor <init>(Lc8/QLn;Lc8/QLn;Landroid/os/Looper;)V
    .locals 1
    .param p2, "mp"    # Lc8/QLn;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 871
    iput-object p1, p0, Lc8/OLn;->this$0:Lc8/QLn;

    .line 872
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 869
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/OLn;->mp:Lc8/QLn;

    .line 873
    iput-object p2, p0, Lc8/OLn;->mp:Lc8/QLn;

    .line 874
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 877
    iget-object v0, p0, Lc8/OLn;->mp:Lc8/QLn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/OLn;->mp:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$000(Lc8/QLn;)I

    move-result v0

    if-nez v0, :cond_2

    .line 878
    :cond_0
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1244
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 885
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1241
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :sswitch_1
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$300(Lc8/QLn;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-virtual {v0, v2}, Lc8/QLn;->setPreparedFlag(Z)V

    .line 890
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    invoke-interface {v0, v1}, Lc8/mNn;->onPrepared(Lc8/KMn;)V

    goto :goto_0

    .line 894
    :sswitch_2
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$400(Lc8/QLn;)Lc8/lNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 896
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$400(Lc8/QLn;)Lc8/lNn;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/lNn;->onReceivePlayByPreload(Ljava/lang/String;)V

    goto :goto_0

    .line 909
    :sswitch_3
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEDIA_BUFFERING_UPDATE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 910
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$500(Lc8/QLn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$500(Lc8/QLn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_0

    .line 916
    :sswitch_4
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$600(Lc8/QLn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$600(Lc8/QLn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 922
    :sswitch_5
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$700(Lc8/QLn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$700(Lc8/QLn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    goto/16 :goto_0

    .line 929
    :sswitch_6
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEDIA_ERROR Error: (arg1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", arg2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    const/4 v9, 0x0

    .line 932
    .local v9, "handled":Z
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$800(Lc8/QLn;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 933
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$800(Lc8/QLn;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v9

    .line 936
    :cond_3
    if-nez v9, :cond_1

    .line 937
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error MsgID.MEDIA_ERROR \u9519\u8bef\u4e3a\u5904\u7406  what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg.arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 951
    .end local v9    # "handled":Z
    :sswitch_7
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: (arg1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", arg2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", what= + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 953
    const/4 v9, 0x0

    .line 954
    .restart local v9    # "handled":Z
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$900(Lc8/QLn;)Lc8/hNn;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AliPlayer.obj ---> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/VOm;->playLog(Ljava/lang/String;)V

    .line 956
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$900(Lc8/QLn;)Lc8/hNn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$900(Lc8/QLn;)Lc8/hNn;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lc8/hNn;->onError(Landroid/media/MediaPlayer;IIILjava/lang/Object;)V

    .line 959
    :cond_4
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$800(Lc8/QLn;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 960
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$800(Lc8/QLn;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v9

    .line 962
    :cond_5
    if-nez v9, :cond_1

    .line 963
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error MsgID.MEDIA_ERROR \u9519\u8bef\u4e3a\u5904\u7406  what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg.arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 969
    .end local v9    # "handled":Z
    :sswitch_8
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Loading: (arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", what= + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / obj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$900(Lc8/QLn;)Lc8/hNn;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 972
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$900(Lc8/QLn;)Lc8/hNn;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lc8/hNn;->onStartLoading(Ljava/lang/Object;)V

    .line 974
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_7

    .line 975
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1000(Lc8/QLn;)Lc8/dNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1000(Lc8/QLn;)Lc8/dNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/dNn;->onStartLoading()V

    goto/16 :goto_0

    .line 979
    :cond_7
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1100(Lc8/QLn;)Lc8/cNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1100(Lc8/QLn;)Lc8/cNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/cNn;->onStartLoading()V

    goto/16 :goto_0

    .line 986
    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_8

    .line 987
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1000(Lc8/QLn;)Lc8/dNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1000(Lc8/QLn;)Lc8/dNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/dNn;->onEndLoading()V

    goto/16 :goto_0

    .line 991
    :cond_8
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1100(Lc8/QLn;)Lc8/cNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1100(Lc8/QLn;)Lc8/cNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/cNn;->onEndLoading()V

    goto/16 :goto_0

    .line 997
    :sswitch_a
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$300(Lc8/QLn;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 998
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-virtual {v0, v2}, Lc8/QLn;->setPreparedFlag(Z)V

    .line 999
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1000
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    invoke-interface {v0, v1}, Lc8/mNn;->onPrepared(Lc8/KMn;)V

    .line 1002
    :cond_9
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1004
    :cond_a
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1007
    if-eqz p1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 1008
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ">>msg.obj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    :cond_b
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "D_Native_MainThread_PreAd_StartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/QLn;->access$1300()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "System.currentTimeMillis():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Native_MainThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/QLn;->access$1300()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    const/16 v2, 0x1f41

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lc8/QLn;->access$1300()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    .line 1016
    :cond_c
    const-string/jumbo v0, "YKPlayer.PlayFlow.Track"

    const-string/jumbo v1, "MEDIA_INFO_PRE_AD_START  Received"

    invoke-static {v0, v1}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1400(Lc8/QLn;)Lc8/RMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1400(Lc8/QLn;)Lc8/RMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/RMn;->onStartPlayAD(I)Z

    goto/16 :goto_0

    .line 1023
    :sswitch_b
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1400(Lc8/QLn;)Lc8/RMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1025
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1400(Lc8/QLn;)Lc8/RMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/RMn;->onEndPlayAD(I)Z

    goto/16 :goto_0

    .line 1029
    :sswitch_c
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/eNn;->onStartPlayMidAD(I)Z

    goto/16 :goto_0

    .line 1034
    :sswitch_d
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/eNn;->onEndPlayMidAD(I)Z

    goto/16 :goto_0

    .line 1039
    :sswitch_e
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1500(Lc8/QLn;)Lc8/eNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/eNn;->onLoadingMidADStart()V

    goto/16 :goto_0

    .line 1048
    :sswitch_f
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1600(Lc8/QLn;)Lc8/WMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1600(Lc8/QLn;)Lc8/WMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1050
    invoke-interface {v0, v1, v2}, Lc8/WMn;->onCurrentPositionUpdate(II)V

    goto/16 :goto_0

    .line 1055
    :sswitch_10
    :try_start_0
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1700(Lc8/QLn;)Lc8/uNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1700(Lc8/QLn;)Lc8/uNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/uNn;->onVideoCurrentIndexUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1058
    :catch_0
    move-exception v8

    .line 1059
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1064
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_11
    :try_start_1
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnCdnSwitchListener:Lc8/TMn;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnCdnSwitchListener:Lc8/TMn;

    invoke-interface {v0}, Lc8/TMn;->onCdnSwitch()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1067
    :catch_1
    move-exception v8

    .line 1068
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1074
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_12
    :try_start_2
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1800(Lc8/QLn;)Lc8/vNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1800(Lc8/QLn;)Lc8/vNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lc8/vNn;->onVideoIndexUpdate(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1078
    :catch_2
    move-exception v8

    .line 1079
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1083
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_13
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_INDEX_AND_REAL_IP is received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lc8/wNn;->onVideoRealIpUpdate(II)V

    goto/16 :goto_0

    .line 1089
    :sswitch_14
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_NETWORK_SPEED_UPDATE is received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1900(Lc8/QLn;)Lc8/iNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1900(Lc8/QLn;)Lc8/iNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/iNn;->onSpeedUpdate(I)V

    goto/16 :goto_0

    .line 1097
    :sswitch_15
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$300(Lc8/QLn;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1098
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-virtual {v0, v2}, Lc8/QLn;->setPreparedFlag(Z)V

    .line 1099
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1100
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$200(Lc8/QLn;)Lc8/mNn;

    move-result-object v0

    invoke-interface {v0, v1}, Lc8/mNn;->onPrepared(Lc8/KMn;)V

    .line 1102
    :cond_d
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1104
    :cond_e
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2000(Lc8/QLn;)Lc8/bNn;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1106
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2000(Lc8/QLn;)Lc8/bNn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/bNn;->onIsInitial(I)V

    .line 1108
    :cond_f
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1109
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "D_Native_MainThread_RealVideo_StartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/QLn;->access$2100()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1110
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "System.currentTimeMillis():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Native_MainThread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/QLn;->access$2100()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    const/16 v2, 0x1f42

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lc8/QLn;->access$2100()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    .line 1114
    :cond_10
    const-string/jumbo v0, "YKPlayer.PlayFlow.Track"

    const-string/jumbo v1, "MEDIA_INFO_VIDEO_START  Received"

    invoke-static {v0, v1}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2200(Lc8/QLn;)Lc8/pNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2200(Lc8/QLn;)Lc8/pNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/pNn;->onRealVideoStart()V

    goto/16 :goto_0

    .line 1120
    :sswitch_16
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1121
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2300(Lc8/QLn;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2300(Lc8/QLn;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 1128
    :sswitch_17
    :try_start_3
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2400(Lc8/QLn;)Lc8/QMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2400(Lc8/QLn;)Lc8/QMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/QMn;->onCountUpdate(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1131
    :catch_3
    move-exception v8

    .line 1132
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1137
    .end local v8    # "e":Ljava/lang/Exception;
    :sswitch_18
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2500(Lc8/QLn;)Lc8/sNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2500(Lc8/QLn;)Lc8/sNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/sNn;->onNotifyChangeVideoQuality()V

    goto/16 :goto_0

    .line 1143
    :sswitch_19
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2500(Lc8/QLn;)Lc8/sNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2500(Lc8/QLn;)Lc8/sNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/sNn;->onNotifyChangeVideoQuality()V

    goto/16 :goto_0

    .line 1149
    :sswitch_1a
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1150
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2600(Lc8/QLn;)Lc8/ZMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2600(Lc8/QLn;)Lc8/ZMn;

    move-result-object v0

    invoke-interface {v0}, Lc8/ZMn;->OnHwDecodeError()V

    goto/16 :goto_0

    .line 1155
    :sswitch_1b
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1156
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2600(Lc8/QLn;)Lc8/ZMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2600(Lc8/QLn;)Lc8/ZMn;

    move-result-object v0

    invoke-interface {v0}, Lc8/ZMn;->onHwPlayError()V

    goto/16 :goto_0

    .line 1161
    :sswitch_1c
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2700(Lc8/QLn;)Lc8/UMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2700(Lc8/QLn;)Lc8/UMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/UMn;->onAdConnectDelay(I)V

    goto/16 :goto_0

    .line 1166
    :sswitch_1d
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1167
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2700(Lc8/QLn;)Lc8/UMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2700(Lc8/QLn;)Lc8/UMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/UMn;->onVideoConnectDelay(I)V

    goto/16 :goto_0

    .line 1171
    :sswitch_1e
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_NETWORK_SPEED is received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/jNn;->onSpeedUpdate(I)V

    goto/16 :goto_0

    .line 1176
    :sswitch_1f
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_BUFFER_PERCENT is received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    iget-object v0, v0, Lc8/QLn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/SMn;->onPercentUpdate(I)V

    goto/16 :goto_0

    .line 1181
    :sswitch_20
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_HTTP_AD_302_DELAY is received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2800(Lc8/QLn;)Lc8/YMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2800(Lc8/QLn;)Lc8/YMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/YMn;->onAd302Delay(I)V

    goto/16 :goto_0

    .line 1186
    :sswitch_21
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_HTTP_VIDEO_302_DELAY is received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2800(Lc8/QLn;)Lc8/YMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2800(Lc8/QLn;)Lc8/YMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/YMn;->onVideo302Delay(I)V

    goto/16 :goto_0

    .line 1191
    :sswitch_22
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1192
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2900(Lc8/QLn;)Lc8/oNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2900(Lc8/QLn;)Lc8/oNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/oNn;->onQualitySmoothChangeFail()V

    goto/16 :goto_0

    .line 1197
    :sswitch_23
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2900(Lc8/QLn;)Lc8/oNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$2900(Lc8/QLn;)Lc8/oNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/oNn;->onQualityChangeSuccess()V

    goto/16 :goto_0

    .line 1203
    :sswitch_24
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1204
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3000(Lc8/QLn;)Lc8/XMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3000(Lc8/QLn;)Lc8/XMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/XMn;->onDropVideoFrames(I)V

    goto/16 :goto_0

    .line 1209
    :sswitch_25
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_RENDER_FIRST_FRAME_DELAY is received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1210
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1214
    :sswitch_26
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_REAL_CONNECT_TO_FIRST_FRAME_DELAY is received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1219
    :sswitch_27
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_HTTP_REDIRECT_TYPE is received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1221
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 1224
    :sswitch_28
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3100(Lc8/QLn;)Lc8/gNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3100(Lc8/QLn;)Lc8/gNn;

    move-result-object v0

    invoke-interface {v0}, Lc8/gNn;->OnNativeShotDown()V

    goto/16 :goto_0

    .line 1229
    :sswitch_29
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    .line 1230
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3200(Lc8/QLn;)Lc8/VMn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$3200(Lc8/QLn;)Lc8/VMn;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lc8/VMn;->onCpuUsage(I)V

    goto/16 :goto_0

    .line 1235
    :sswitch_2a
    invoke-static {}, Lc8/QLn;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MEDIA_INFO_RELEASE_TIME is received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1236
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lc8/OLn;->this$0:Lc8/QLn;

    invoke-static {v0}, Lc8/QLn;->access$1200(Lc8/QLn;)Lc8/aNn;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lc8/aNn;->onInfo(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 885
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_6
        0x134 -> :sswitch_28
        0x1f7 -> :sswitch_18
        0x3eb -> :sswitch_8
        0x3ec -> :sswitch_9
        0x3ee -> :sswitch_7
        0x3f2 -> :sswitch_7
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x3f6 -> :sswitch_d
        0x3f9 -> :sswitch_15
        0x3fa -> :sswitch_16
        0x3fc -> :sswitch_e
        0x3fd -> :sswitch_23
        0x3fe -> :sswitch_22
        0x3ff -> :sswitch_7
        0x410 -> :sswitch_17
        0x413 -> :sswitch_19
        0x41a -> :sswitch_24
        0x44a -> :sswitch_1c
        0x44b -> :sswitch_1d
        0x44c -> :sswitch_20
        0x44d -> :sswitch_21
        0x44e -> :sswitch_25
        0x44f -> :sswitch_26
        0x456 -> :sswitch_7
        0x457 -> :sswitch_7
        0x7d0 -> :sswitch_f
        0x7d4 -> :sswitch_7
        0x7d5 -> :sswitch_7
        0x7d6 -> :sswitch_14
        0x7d8 -> :sswitch_12
        0x7d9 -> :sswitch_13
        0x83e -> :sswitch_27
        0x89d -> :sswitch_7
        0x8fc -> :sswitch_1e
        0x8fd -> :sswitch_1f
        0x8fe -> :sswitch_29
        0x960 -> :sswitch_10
        0x9c4 -> :sswitch_11
        0x7530 -> :sswitch_1a
        0x7531 -> :sswitch_1b
        0xc353 -> :sswitch_2
        0xc354 -> :sswitch_2a
    .end sparse-switch
.end method
