.class public final Lc8/do;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Lc8/Zo;

.field final synthetic this$0:Lc8/eo;


# direct methods
.method constructor <init>(Lc8/eo;Lc8/Zo;)V
    .locals 1
    .param p1, "this$0"    # Lc8/eo;
    .param p2, "twilightManager"    # Lc8/Zo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    iput-object p1, p0, Lc8/do;->this$0:Lc8/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lc8/do;->mTwilightManager:Lc8/Zo;

    .line 311
    invoke-virtual {p2}, Lc8/Zo;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lc8/do;->mIsNight:Z

    .line 312
    return-void
.end method


# virtual methods
.method final cleanup()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lc8/do;->this$0:Lc8/eo;

    iget-object v0, v0, Lc8/eo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 359
    :cond_0
    return-void
.end method

.method final dispatchTimeChanged()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lc8/do;->mTwilightManager:Lc8/Zo;

    invoke-virtual {v1}, Lc8/Zo;->isNight()Z

    move-result v0

    .line 322
    .local v0, "isNight":Z
    iget-boolean v1, p0, Lc8/do;->mIsNight:Z

    if-eq v0, v1, :cond_0

    .line 323
    iput-boolean v0, p0, Lc8/do;->mIsNight:Z

    .line 324
    iget-object v1, p0, Lc8/do;->this$0:Lc8/eo;

    invoke-virtual {v1}, Lc8/eo;->applyDayNight()Z

    .line 326
    :cond_0
    return-void
.end method

.method final getApplyableNightMode()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lc8/do;->mTwilightManager:Lc8/Zo;

    invoke-virtual {v0}, Lc8/Zo;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lc8/do;->mIsNight:Z

    .line 317
    iget-boolean v0, p0, Lc8/do;->mIsNight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final setup()V
    .locals 3

    .prologue
    .line 329
    invoke-virtual {p0}, Lc8/do;->cleanup()V

    .line 334
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lc8/co;

    invoke-direct {v0, p0}, Lc8/co;-><init>(Lc8/do;)V

    iput-object v0, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    :cond_0
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    .line 347
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lc8/do;->this$0:Lc8/eo;

    iget-object v0, v0, Lc8/eo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/do;->mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lc8/do;->mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method
