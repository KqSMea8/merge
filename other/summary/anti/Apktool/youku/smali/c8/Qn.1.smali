.class public Lc8/Qn;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Lc8/Rn;
.implements Lc8/qn;


# instance fields
.field private mDelegate:Lc8/Tn;

.field private mEatKeyUpEvent:Z

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lc8/Qn;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 155
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Tn;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 526
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, -0x7001

    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 530
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v1

    .line 532
    .local v1, "actionBar":Lc8/mn;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/mn;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lc8/mn;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    iput-boolean v2, p0, Lc8/Qn;->mEatKeyUpEvent:Z

    .line 541
    .end local v0    # "action":I
    .end local v1    # "actionBar":Lc8/mn;
    :goto_0
    return v2

    .line 536
    .restart local v0    # "action":I
    :cond_0
    if-ne v0, v2, :cond_1

    iget-boolean v3, p0, Lc8/Qn;->mEatKeyUpEvent:Z

    if-eqz v3, :cond_1

    .line 537
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Qn;->mEatKeyUpEvent:Z

    goto :goto_0

    .line 541
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 190
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lc8/Tn;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lc8/Qn;->mDelegate:Lc8/Tn;

    if-nez v0, :cond_0

    .line 519
    invoke-static {p0, p0}, Lc8/Tn;->create(Landroid/app/Activity;Lc8/Rn;)Lc8/Tn;

    move-result-object v0

    iput-object v0, p0, Lc8/Qn;->mDelegate:Lc8/Tn;

    .line 521
    :cond_0
    iget-object v0, p0, Lc8/Qn;->mDelegate:Lc8/Tn;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lc8/pn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->getDrawerToggleDelegate()Lc8/pn;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lc8/ox;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Lc8/ox;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/ox;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    .line 549
    :cond_0
    iget-object v0, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSupportActionBar()Lc8/mn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 430
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->invalidateOptionsMenu()V

    .line 245
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Tn;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    iget-object v1, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 165
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    .local v0, "newMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lc8/Qn;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 168
    .end local v0    # "newMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 469
    invoke-virtual {p0}, Lc8/Qn;->onSupportContentChanged()V

    .line 470
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    .line 72
    .local v0, "delegate":Lc8/Tn;
    invoke-virtual {v0}, Lc8/Tn;->installViewFactory()V

    .line 73
    invoke-virtual {v0, p1}, Lc8/Tn;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0}, Lc8/Tn;->applyDayNight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/Qn;->mThemeId:I

    if-eqz v1, :cond_0

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 80
    invoke-virtual {p0}, Lc8/Qn;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Lc8/Qn;->mThemeId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lc8/Qn;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void

    .line 82
    :cond_1
    iget v1, p0, Lc8/Qn;->mThemeId:I

    invoke-virtual {p0, v1}, Lc8/Qn;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 348
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 210
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->onDestroy()V

    .line 211
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 200
    .local v0, "ab":Lc8/mn;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lc8/mn;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lc8/Qn;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 493
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 504
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 505
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->onPostCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 173
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->onPostResume()V

    .line 174
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 366
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 179
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->onStart()V

    .line 180
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->onStop()V

    .line 186
    return-void
.end method

.method public onSupportActionModeFinished(Lc8/lq;)V
    .locals 0
    .param p1, "mode"    # Lc8/lq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public onSupportActionModeStarted(Lc8/lq;)V
    .locals 0
    .param p1, "mode"    # Lc8/lq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 256
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lc8/Qn;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 394
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {p0, v1}, Lc8/Qn;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 397
    .local v0, "b":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Lc8/Qn;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 398
    invoke-virtual {p0, v0}, Lc8/Qn;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 399
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 402
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const/4 v2, 0x1

    .line 415
    :goto_1
    return v2

    .line 406
    .restart local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lc8/Qn;->finish()V

    goto :goto_0

    .line 411
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :cond_0
    invoke-virtual {p0, v1}, Lc8/Qn;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 415
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 215
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 216
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lc8/kq;)Lc8/lq;
    .locals 1
    .param p1, "callback"    # Lc8/kq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->setContentView(I)V

    .line 141
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->setContentView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 150
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Tn;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method

.method public setSupportActionBar(Lc8/kx;)V
    .locals 1
    .param p1, "toolbar"    # Lc8/kx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->setSupportActionBar(Lc8/kx;)V

    .line 131
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    .line 92
    iput p1, p0, Lc8/Qn;->mThemeId:I

    .line 93
    return-void
.end method

.method public startSupportActionMode(Lc8/kq;)Lc8/lq;
    .locals 1
    .param p1, "callback"    # Lc8/kq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->startSupportActionMode(Lc8/kq;)Lc8/lq;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Tn;->invalidateOptionsMenu()V

    .line 240
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 463
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lc8/Qn;->getDelegate()Lc8/Tn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Tn;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 447
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
