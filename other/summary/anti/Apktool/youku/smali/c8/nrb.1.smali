.class public Lc8/nrb;
.super Ljava/lang/Object;
.source "WXAudioModule.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/prb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXAudioOnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/prb;


# direct methods
.method private constructor <init>(Lc8/prb;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lc8/nrb;->this$0:Lc8/prb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/prb;Lc8/jrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/prb;
    .param p2, "x1"    # Lc8/jrb;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lc8/nrb;-><init>(Lc8/prb;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v5, 0x6

    .line 395
    iget-object v2, p0, Lc8/nrb;->this$0:Lc8/prb;

    invoke-static {v2, p1}, Lc8/prb;->access$100(Lc8/prb;Landroid/media/MediaPlayer;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 396
    .local v0, "id":J
    iget-object v2, p0, Lc8/nrb;->this$0:Lc8/prb;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lc8/prb;->access$200(Lc8/prb;Ljava/lang/Long;I)V

    .line 398
    iget-object v2, p0, Lc8/nrb;->this$0:Lc8/prb;

    iget-object v3, p0, Lc8/nrb;->this$0:Lc8/prb;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error in loading audio. what:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " extra:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lc8/prb;->access$800(Lc8/prb;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/prb;->access$600(Lc8/prb;Ljava/util/Map;)V

    .line 399
    const/4 v2, 0x1

    return v2
.end method
