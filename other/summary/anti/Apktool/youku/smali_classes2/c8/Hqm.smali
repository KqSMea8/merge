.class public Lc8/Hqm;
.super Ljava/lang/Object;
.source "PWAudioPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PWAudioFocusListener"
.end annotation


# instance fields
.field isLossTransientAndPause:Z

.field meetMayDuck:Z

.field final synthetic this$0:Lc8/Jqm;


# direct methods
.method constructor <init>(Lc8/Jqm;)V
    .locals 1
    .param p1, "this$0"    # Lc8/Jqm;

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object p1, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-boolean v0, p0, Lc8/Hqm;->meetMayDuck:Z

    .line 274
    iput-boolean v0, p0, Lc8/Hqm;->isLossTransientAndPause:Z

    .line 277
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 283
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v1, p0, Lc8/Hqm;->isLossTransientAndPause:Z

    .line 285
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playPause()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput-boolean v2, p0, Lc8/Hqm;->isLossTransientAndPause:Z

    goto :goto_0

    .line 289
    :cond_2
    if-ne p1, v1, :cond_4

    .line 291
    iget-boolean v0, p0, Lc8/Hqm;->isLossTransientAndPause:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->canResume()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playResume()V

    .line 294
    :cond_3
    iget-boolean v0, p0, Lc8/Hqm;->meetMayDuck:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lc8/Jqm;->setVolume(F)V

    .line 296
    iput-boolean v2, p0, Lc8/Hqm;->meetMayDuck:Z

    goto :goto_0

    .line 298
    :cond_4
    const/4 v0, -0x3

    if-ne p1, v0, :cond_5

    .line 300
    iput-boolean v1, p0, Lc8/Hqm;->meetMayDuck:Z

    .line 301
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lc8/Jqm;->setVolume(F)V

    goto :goto_0

    .line 302
    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playStop()V

    .line 306
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playReset()V

    .line 307
    iget-object v0, p0, Lc8/Hqm;->this$0:Lc8/Jqm;

    invoke-static {v0}, Lc8/Jqm;->access$300(Lc8/Jqm;)V

    goto :goto_0
.end method
