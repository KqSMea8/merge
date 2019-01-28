.class public Lc8/Tqb;
.super Landroid/content/BroadcastReceiver;
.source "WXWindVaneModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResultReceive"
.end annotation


# instance fields
.field private mWVPluginEntryManager:Lc8/hE;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Tqb;->mWVPluginEntryManager:Lc8/hE;

    .line 166
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 153
    iget-object v2, p0, Lc8/Tqb;->mWVPluginEntryManager:Lc8/hE;

    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v2, "requestCode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "requestCode":I
    const-string/jumbo v2, "resultCode"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 156
    .local v1, "resultCode":I
    iget-object v2, p0, Lc8/Tqb;->mWVPluginEntryManager:Lc8/hE;

    invoke-virtual {v2, v0, v1, p2}, Lc8/hE;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    .end local v0    # "requestCode":I
    .end local v1    # "resultCode":I
    :cond_0
    return-void
.end method

.method public setWVPluginEntryManager(Lc8/hE;)V
    .locals 0
    .param p1, "manager"    # Lc8/hE;

    .prologue
    .line 161
    iput-object p1, p0, Lc8/Tqb;->mWVPluginEntryManager:Lc8/hE;

    .line 162
    return-void
.end method
