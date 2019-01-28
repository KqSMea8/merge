.class public abstract Lc8/uZb;
.super Landroid/app/Service;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tZb;,
        Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "CLOSE"

.field public static final ACTION_CLOSE_ALL:Ljava/lang/String; = "CLOSE_ALL"

.field public static final ACTION_HIDE:Ljava/lang/String; = "HIDE"

.field public static final ACTION_RESTORE:Ljava/lang/String; = "RESTORE"

.field public static final ACTION_SEND_DATA:Ljava/lang/String; = "SEND_DATA"

.field public static final ACTION_SHOW:Ljava/lang/String; = "SHOW"

.field public static final DEFAULT_ID:I = 0x0

.field public static final DISREGARD_ID:I = -0x2

.field public static final ONGOING_NOTIFICATION_ID:I = -0x1

.field static final TAG:Ljava/lang/String; = "StandOutWindow"

.field static sFocusedWindow:Lc8/IZb;

.field public static sWindowCache:Lc8/JZb;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mFlags:I

.field public mIcon:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mWindowManager:Landroid/view/WindowManager;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private startedForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lc8/JZb;

    invoke-direct {v0}, Lc8/JZb;-><init>()V

    sput-object v0, Lc8/uZb;->sWindowCache:Lc8/JZb;

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lc8/uZb;->sFocusedWindow:Lc8/IZb;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/uZb;->mAppName:Ljava/lang/String;

    .line 103
    iput v1, p0, Lc8/uZb;->mIcon:I

    .line 105
    iput v1, p0, Lc8/uZb;->mFlags:I

    .line 1230
    return-void
.end method

.method static synthetic access$002(Lc8/uZb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/uZb;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lc8/uZb;->startedForeground:Z

    return p1
.end method

.method public static closeAll(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    invoke-static {p0, p1}, Lc8/uZb;->getCloseAllIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    return-void
.end method

.method public static getCloseAllIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "CLOSE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSendDataIntent(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "toId"    # I
    .param p3, "requestCode"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .param p6, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "toCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    .local p5, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "requestCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wei.mark.standout.data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wei.mark.standout.fromCls"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "SEND_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    sget-object v3, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {v3, p2, p1}, Lc8/JZb;->isCached(ILjava/lang/Class;)Z

    move-result v1

    .line 132
    .local v1, "cached":Z
    if-eqz v1, :cond_0

    const-string/jumbo v0, "RESTORE"

    .line 133
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "standout://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 134
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    .line 132
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v0, "SHOW"

    goto :goto_0

    .line 133
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "toId"    # I
    .param p3, "requestCode"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .param p6, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "toCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    .local p5, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    invoke-static/range {p0 .. p6}, Lc8/uZb;->getSendDataIntent(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    invoke-static {p0, p1, p2}, Lc8/uZb;->getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method


# virtual methods
.method public final declared-synchronized bringToFront(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v2

    .line 800
    .local v2, "window":Lc8/IZb;
    if-nez v2, :cond_0

    .line 801
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to bringToFront("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") a null window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v2    # "window":Lc8/IZb;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 804
    .restart local v2    # "window":Lc8/IZb;
    :cond_0
    :try_start_1
    iget v3, v2, Lc8/IZb;->visibility:I

    if-nez v3, :cond_1

    .line 805
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to bringToFront("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") a window that is not shown."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 808
    :cond_1
    iget v3, v2, Lc8/IZb;->visibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 831
    :goto_0
    monitor-exit p0

    return-void

    .line 818
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 822
    .local v1, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :try_start_3
    iget-object v3, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 827
    :goto_1
    :try_start_4
    iget-object v3, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 823
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 824
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized close(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x2

    .line 686
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v2

    .line 688
    .local v2, "window":Lc8/IZb;
    if-nez v2, :cond_0

    .line 689
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to close("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") a null window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v2    # "window":Lc8/IZb;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 692
    .restart local v2    # "window":Lc8/IZb;
    :cond_0
    :try_start_1
    iget v3, v2, Lc8/IZb;->visibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_2

    .line 767
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 697
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, v2}, Lc8/uZb;->onClose(ILc8/IZb;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " close cancelled by implementation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 703
    :cond_3
    iget-object v3, p0, Lc8/uZb;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 705
    invoke-virtual {p0, v2}, Lc8/uZb;->unfocus(Lc8/IZb;)Z

    .line 707
    const/4 v3, 0x2

    iput v3, v2, Lc8/IZb;->visibility:I

    .line 710
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 715
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    .line 716
    :try_start_3
    new-instance v3, Lc8/sZb;

    invoke-direct {v3, p0, v2, p1}, Lc8/sZb;-><init>(Lc8/uZb;Lc8/IZb;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 747
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/IZb;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    .line 765
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 750
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_5
    iget-object v3, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 753
    sget-object v3, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lc8/JZb;->removeCache(ILjava/lang/Class;)V

    .line 756
    sget-object v3, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/JZb;->getCacheSize(Ljava/lang/Class;)I

    move-result v3

    if-nez v3, :cond_1

    .line 759
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/uZb;->startedForeground:Z

    .line 760
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lc8/uZb;->stopForeground(Z)V

    .line 761
    invoke-virtual {p0}, Lc8/uZb;->stopSelf()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized closeAll()V
    .locals 4

    .prologue
    .line 774
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc8/uZb;->onCloseAll()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 789
    :cond_0
    monitor-exit p0

    return-void

    .line 780
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 781
    .local v2, "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lc8/uZb;->getExistingIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 782
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 774
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":I
    .end local v2    # "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 786
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 787
    .restart local v1    # "id":I
    invoke-virtual {p0, v1}, Lc8/uZb;->close(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public abstract createAndAttachView(ILandroid/widget/FrameLayout;)V
.end method

.method public final declared-synchronized focus(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 842
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v0

    .line 843
    .local v0, "window":Lc8/IZb;
    if-nez v0, :cond_0

    .line 844
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to focus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") a null window."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    .end local v0    # "window":Lc8/IZb;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 847
    .restart local v0    # "window":Lc8/IZb;
    :cond_0
    :try_start_1
    iget v1, v0, Lc8/IZb;->flags:I

    sget v2, Lc8/pZb;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    invoke-static {v1, v2}, Lc8/wZb;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 849
    sget-object v1, Lc8/uZb;->sFocusedWindow:Lc8/IZb;

    if-eqz v1, :cond_1

    .line 850
    sget-object v1, Lc8/uZb;->sFocusedWindow:Lc8/IZb;

    invoke-virtual {p0, v1}, Lc8/uZb;->unfocus(Lc8/IZb;)Z

    .line 853
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/IZb;->onFocus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 856
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDropDown(I)Landroid/widget/PopupWindow;
    .locals 13
    .param p1, "id"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    .line 365
    invoke-virtual {p0, p1}, Lc8/uZb;->getDropDownItems(I)Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "dropDownListItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayerconsole/lib/StandOutWindow$DropDownListItem;>;"
    if-eqz v3, :cond_0

    .line 367
    move-object v7, v3

    .line 373
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayerconsole/lib/StandOutWindow$DropDownListItem;>;"
    :goto_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    .local v8, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 376
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v8, v10, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 379
    .local v2, "dropDown":Landroid/widget/PopupWindow;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/tZb;

    .line 380
    .local v6, "item":Lc8/tZb;
    iget-object v10, p0, Lc8/uZb;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v11, Lcom/youku/phone/R$layout;->console_drop_down_list_item:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 381
    .local v9, "listItem":Landroid/view/ViewGroup;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    sget v10, Lcom/youku/phone/R$id;->icon:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 384
    .local v5, "icon":Landroid/widget/ImageView;
    iget v10, v6, Lc8/tZb;->icon:I

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    sget v10, Lcom/youku/phone/R$id;->description:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 387
    .local v1, "description":Landroid/widget/TextView;
    iget-object v10, v6, Lc8/tZb;->description:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    new-instance v10, Lc8/qZb;

    invoke-direct {v10, p0, v6, v2}, Lc8/qZb;-><init>(Lc8/uZb;Lc8/tZb;Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 369
    .end local v1    # "description":Landroid/widget/TextView;
    .end local v2    # "dropDown":Landroid/widget/PopupWindow;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "icon":Landroid/widget/ImageView;
    .end local v6    # "item":Lc8/tZb;
    .end local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayerconsole/lib/StandOutWindow$DropDownListItem;>;"
    .end local v8    # "list":Landroid/widget/LinearLayout;
    .end local v9    # "listItem":Landroid/view/ViewGroup;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayerconsole/lib/StandOutWindow$DropDownListItem;>;"
    goto :goto_0

    .line 399
    .restart local v2    # "dropDown":Landroid/widget/PopupWindow;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "list":Landroid/widget/LinearLayout;
    :cond_1
    invoke-virtual {p0}, Lc8/uZb;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x108001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 400
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-object v2
.end method

.method public getDropDownItems(I)Ljava/util/List;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/tZb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExistingIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    sget-object v0, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/JZb;->getCacheIds(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getFocusedWindow()Lc8/IZb;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lc8/uZb;->sFocusedWindow:Lc8/IZb;

    return-object v0
.end method

.method public getHiddenNotification(I)Landroid/app/Notification;
    .locals 14
    .param p1, "id"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 325
    iget v5, p0, Lc8/uZb;->mIcon:I

    .line 326
    .local v5, "icon":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 327
    .local v10, "when":J
    invoke-virtual {p0}, Lc8/uZb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 328
    .local v1, "c":Landroid/content/Context;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lc8/uZb;->mAppName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, " Hidden"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "contentTitle":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 330
    .local v3, "contentText":Ljava/lang/String;
    const-string/jumbo v9, "%s: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "tickerText":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p0, v9, p1}, Lc8/uZb;->getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v7

    .line 335
    .local v7, "notificationIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 337
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v7, :cond_0

    .line 338
    const/4 v9, 0x0

    const/high16 v12, 0x8000000

    invoke-static {p0, v9, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 343
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 345
    .local v6, "notification":Landroid/app/Notification;
    return-object v6
.end method

.method public abstract getParams(ILc8/IZb;)Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
.end method

.method public getPersistentNotification(I)Landroid/app/Notification;
    .locals 14
    .param p1, "id"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 282
    iget v5, p0, Lc8/uZb;->mIcon:I

    .line 283
    .local v5, "icon":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 284
    .local v10, "when":J
    invoke-virtual {p0}, Lc8/uZb;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 285
    .local v1, "c":Landroid/content/Context;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lc8/uZb;->mAppName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, " Running"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "contentTitle":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 287
    .local v3, "contentText":Ljava/lang/String;
    const-string/jumbo v9, "%s: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "tickerText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 294
    .local v7, "notificationIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 296
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v7, :cond_0

    .line 297
    const/4 v9, 0x0

    const/high16 v12, 0x8000000

    invoke-static {p0, v9, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 302
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 304
    .local v6, "notification":Landroid/app/Notification;
    return-object v6
.end method

.method public final getWindow(I)Lc8/IZb;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 869
    sget-object v0, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/JZb;->getCache(ILjava/lang/Class;)Lc8/IZb;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized hide(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v3

    .line 614
    .local v3, "window":Lc8/IZb;
    if-nez v3, :cond_0

    .line 615
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Tried to hide("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") a null window."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .end local v3    # "window":Lc8/IZb;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 619
    .restart local v3    # "window":Lc8/IZb;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lc8/uZb;->onHide(ILc8/IZb;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " hide cancelled by implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :goto_0
    monitor-exit p0

    return-void

    .line 625
    :cond_1
    :try_start_2
    iget v4, v3, Lc8/IZb;->visibility:I

    if-nez v4, :cond_2

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is already hidden."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    :cond_2
    iget v4, v3, Lc8/IZb;->flags:I

    sget v5, Lc8/pZb;->FLAG_WINDOW_HIDE_ENABLE:I

    invoke-static {v4, v5}, Lc8/wZb;->isSet(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 631
    const/4 v4, 0x2

    iput v4, v3, Lc8/IZb;->visibility:I

    .line 634
    invoke-virtual {p0, p1}, Lc8/uZb;->getHiddenNotification(I)Landroid/app/Notification;

    move-result-object v2

    .line 637
    .local v2, "notification":Landroid/app/Notification;
    sget v4, Lcom/youku/phone/R$anim;->console_hide:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 641
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    .line 642
    :try_start_3
    new-instance v4, Lc8/rZb;

    invoke-direct {v4, p0, v3}, Lc8/rZb;-><init>(Lc8/uZb;Lc8/IZb;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 659
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/IZb;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    :goto_1
    :try_start_4
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 671
    iget-object v4, p0, Lc8/uZb;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 662
    :cond_3
    :try_start_5
    iget-object v4, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 675
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_4
    invoke-virtual {p0, p1}, Lc8/uZb;->close(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final isExistingId(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 864
    sget-object v0, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/JZb;->isCached(ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClose(ILc8/IZb;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseAll()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 177
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lc8/uZb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    .line 178
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lc8/uZb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lc8/uZb;->mNotificationManager:Landroid/app/NotificationManager;

    .line 179
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lc8/uZb;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lc8/uZb;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/uZb;->startedForeground:Z

    .line 182
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 234
    invoke-virtual {p0}, Lc8/uZb;->closeAll()V

    .line 235
    return-void
.end method

.method public onHide(ILc8/IZb;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p5, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/uZb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    return-void
.end method

.method public onShow(ILc8/IZb;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x0

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 190
    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 195
    .local v1, "id":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "ID cannot equals StandOutWindow.ONGOING_NOTIFICATION_ID"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const-string/jumbo v0, "SHOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "RESTORE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :cond_1
    invoke-virtual {p0, v1}, Lc8/uZb;->show(I)Lc8/IZb;

    .line 226
    .end local v1    # "id":I
    .end local v6    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 201
    .restart local v1    # "id":I
    .restart local v6    # "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "HIDE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {p0, v1}, Lc8/uZb;->hide(I)V

    goto :goto_0

    .line 203
    :cond_4
    const-string/jumbo v0, "CLOSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {p0, v1}, Lc8/uZb;->close(I)V

    goto :goto_0

    .line 205
    :cond_5
    const-string/jumbo v0, "CLOSE_ALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {p0}, Lc8/uZb;->closeAll()V

    goto :goto_0

    .line 207
    :cond_6
    const-string/jumbo v0, "SEND_DATA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0, v1}, Lc8/uZb;->isExistingId(I)Z

    .line 212
    const-string/jumbo v0, "wei.mark.standout.data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 213
    .local v3, "data":Landroid/os/Bundle;
    const-string/jumbo v0, "requestCode"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 215
    .local v2, "requestCode":I
    const-string/jumbo v0, "wei.mark.standout.fromCls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 217
    .local v4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/poplayerconsole/lib/StandOutWindow;>;"
    const-string/jumbo v0, "fromId"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "fromId":I
    move-object v0, p0

    .line 218
    invoke-virtual/range {v0 .. v5}, Lc8/uZb;->onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method public onTouchHandleMove(ILc8/IZb;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 899
    invoke-virtual {p2}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    .line 904
    .local v2, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v7, v7, Lc8/vZb;->lastX:I

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->firstX:I

    sub-int v4, v7, v8

    .line 905
    .local v4, "totalDeltaX":I
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v7, v7, Lc8/vZb;->lastY:I

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->firstY:I

    sub-int v5, v7, v8

    .line 907
    .local v5, "totalDeltaY":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 960
    :cond_0
    :goto_0
    return v6

    .line 909
    :pswitch_0
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lc8/vZb;->lastX:I

    .line 910
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lc8/vZb;->lastY:I

    .line 912
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->lastX:I

    iput v8, v7, Lc8/vZb;->firstX:I

    .line 913
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->lastY:I

    iput v8, v7, Lc8/vZb;->firstY:I

    goto :goto_0

    .line 916
    :pswitch_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->lastX:I

    sub-int v0, v7, v8

    .line 917
    .local v0, "deltaX":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v8, v8, Lc8/vZb;->lastY:I

    sub-int v1, v7, v8

    .line 919
    .local v1, "deltaY":I
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lc8/vZb;->lastX:I

    .line 920
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lc8/vZb;->lastY:I

    .line 922
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-boolean v7, v7, Lc8/vZb;->moving:Z

    if-nez v7, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-lt v7, v8, :cond_0

    .line 923
    :cond_1
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iput-boolean v6, v7, Lc8/vZb;->moving:Z

    .line 926
    iget v7, p2, Lc8/IZb;->flags:I

    sget v8, Lc8/pZb;->FLAG_BODY_MOVE_ENABLE:I

    invoke-static {v7, v8}, Lc8/wZb;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 929
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 930
    iget v7, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    add-int/2addr v7, v0

    iput v7, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 931
    iget v7, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    add-int/2addr v7, v1

    iput v7, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 934
    :cond_2
    invoke-virtual {p2}, Lc8/IZb;->edit()Lc8/GZb;

    move-result-object v7

    iget v8, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    iget v9, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-virtual {v7, v8, v9}, Lc8/GZb;->setPosition(II)Lc8/GZb;

    move-result-object v7

    invoke-virtual {v7}, Lc8/GZb;->commit()V

    goto/16 :goto_0

    .line 939
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :pswitch_2
    iget-object v7, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iput-boolean v3, v7, Lc8/vZb;->moving:Z

    .line 941
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 944
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_3

    move v3, v6

    .line 945
    .local v3, "tap":Z
    :cond_3
    if-eqz v3, :cond_0

    iget v7, p2, Lc8/IZb;->flags:I

    sget v8, Lc8/pZb;->FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

    invoke-static {v7, v8}, Lc8/wZb;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 946
    invoke-virtual {p0, p1}, Lc8/uZb;->bringToFront(I)V

    goto/16 :goto_0

    .line 951
    .end local v3    # "tap":Z
    :cond_4
    iget v7, p2, Lc8/IZb;->flags:I

    sget v8, Lc8/pZb;->FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

    invoke-static {v7, v8}, Lc8/wZb;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 952
    invoke-virtual {p0, p1}, Lc8/uZb;->bringToFront(I)V

    goto/16 :goto_0

    .line 907
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchHandleResize(ILc8/IZb;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "window"    # Lc8/IZb;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 974
    invoke-virtual {p2}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    .line 976
    .local v2, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1009
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 978
    :pswitch_1
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lc8/vZb;->lastX:I

    .line 979
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lc8/vZb;->lastY:I

    .line 981
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-object v4, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v4, v4, Lc8/vZb;->lastX:I

    iput v4, v3, Lc8/vZb;->firstX:I

    .line 982
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget-object v4, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v4, v4, Lc8/vZb;->lastY:I

    iput v4, v3, Lc8/vZb;->firstY:I

    goto :goto_0

    .line 985
    :pswitch_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v4, v4, Lc8/vZb;->lastX:I

    sub-int v0, v3, v4

    .line 986
    .local v0, "deltaX":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v4, v4, Lc8/vZb;->lastY:I

    sub-int v1, v3, v4

    .line 989
    .local v1, "deltaY":I
    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    .line 990
    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 993
    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    iget v4, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minWidth:I

    if-lt v3, v4, :cond_0

    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    iget v4, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    if-gt v3, v4, :cond_0

    .line 994
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lc8/vZb;->lastX:I

    .line 997
    :cond_0
    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    iget v4, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minHeight:I

    if-lt v3, v4, :cond_1

    iget v3, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    iget v4, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    if-gt v3, v4, :cond_1

    .line 998
    iget-object v3, p2, Lc8/IZb;->touchInfo:Lc8/vZb;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lc8/vZb;->lastY:I

    .line 1001
    :cond_1
    invoke-virtual {p2}, Lc8/IZb;->edit()Lc8/GZb;

    move-result-object v3

    iget v4, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    iget v5, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lc8/GZb;->setSize(II)Lc8/GZb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/GZb;->commit()V

    goto :goto_0

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setFocusedWindow(Lc8/IZb;)V
    .locals 0
    .param p1, "window"    # Lc8/IZb;

    .prologue
    .line 885
    sput-object p1, Lc8/uZb;->sFocusedWindow:Lc8/IZb;

    .line 886
    return-void
.end method

.method public final declared-synchronized show(I)Lc8/IZb;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 529
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v1

    .line 533
    .local v1, "cachedWindow":Lc8/IZb;
    if-eqz v1, :cond_0

    .line 534
    move-object v5, v1

    .line 540
    .local v5, "window":Lc8/IZb;
    :goto_0
    invoke-virtual {p0, p1, v5}, Lc8/uZb;->onShow(ILc8/IZb;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " show cancelled by implementation."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    const/4 v5, 0x0

    .line 602
    .end local v5    # "window":Lc8/IZb;
    :goto_1
    monitor-exit p0

    return-object v5

    .line 536
    :cond_0
    :try_start_1
    new-instance v5, Lc8/IZb;

    invoke-direct {v5, p0, p1}, Lc8/IZb;-><init>(Lc8/uZb;I)V

    .restart local v5    # "window":Lc8/IZb;
    goto :goto_0

    .line 546
    :cond_1
    iget v6, v5, Lc8/IZb;->visibility:I

    if-ne v6, v7, :cond_2

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is already shown."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    invoke-virtual {p0, p1}, Lc8/uZb;->focus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 529
    .end local v1    # "cachedWindow":Lc8/IZb;
    .end local v5    # "window":Lc8/IZb;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 552
    .restart local v1    # "cachedWindow":Lc8/IZb;
    .restart local v5    # "window":Lc8/IZb;
    :cond_2
    const/4 v6, 0x1

    :try_start_2
    iput v6, v5, Lc8/IZb;->visibility:I

    .line 555
    invoke-virtual {p0, p1}, Lc8/uZb;->isExistingId(I)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Lcom/youku/phone/R$anim;->console_show:I

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 559
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_2
    invoke-virtual {v5}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 563
    .local v4, "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :try_start_3
    iget-object v6, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v5, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    if-eqz v0, :cond_3

    .line 567
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc8/IZb;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    :cond_3
    :goto_3
    :try_start_4
    sget-object v6, Lc8/uZb;->sWindowCache:Lc8/JZb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v5}, Lc8/JZb;->putCache(ILjava/lang/Class;Lc8/IZb;)V

    .line 577
    invoke-virtual {p0, p1}, Lc8/uZb;->getPersistentNotification(I)Landroid/app/Notification;

    move-result-object v3

    .line 580
    .local v3, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_7

    .line 581
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 584
    iget-boolean v6, p0, Lc8/uZb;->startedForeground:Z

    if-nez v6, :cond_6

    .line 586
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v3}, Lc8/uZb;->startForeground(ILandroid/app/Notification;)V

    .line 587
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/uZb;->startedForeground:Z

    .line 600
    :cond_4
    :goto_4
    invoke-virtual {p0, p1}, Lc8/uZb;->focus(I)Z

    goto :goto_1

    .line 555
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :cond_5
    const/high16 v6, 0x10a0000

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    .line 569
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    .restart local v4    # "params":Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;
    :catch_0
    move-exception v2

    .line 570
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 590
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "notification":Landroid/app/Notification;
    :cond_6
    iget-object v6, p0, Lc8/uZb;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 594
    :cond_7
    iget-boolean v6, p0, Lc8/uZb;->startedForeground:Z

    if-nez v6, :cond_4

    .line 595
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Your StandOutWindow service mustprovide a persistent notification.The notification prevents Androidfrom killing your service in lowmemory situations."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized unfocus(Lc8/IZb;)Z
    .locals 2
    .param p1, "window"    # Lc8/IZb;

    .prologue
    .line 1021
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1022
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tried to unfocus a null window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1024
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lc8/IZb;->onFocus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public updateViewLayout(ILcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "params"    # Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .prologue
    .line 1034
    invoke-virtual {p0, p1}, Lc8/uZb;->getWindow(I)Lc8/IZb;

    move-result-object v1

    .line 1036
    .local v1, "window":Lc8/IZb;
    if-nez v1, :cond_0

    .line 1037
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tried to updateViewLayout("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") a null window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1040
    :cond_0
    iget v2, v1, Lc8/IZb;->visibility:I

    if-nez v2, :cond_2

    .line 1060
    :cond_1
    :goto_0
    return-void

    .line 1044
    :cond_2
    iget v2, v1, Lc8/IZb;->visibility:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1055
    :try_start_0
    invoke-virtual {v1, p2}, Lc8/IZb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object v2, p0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
