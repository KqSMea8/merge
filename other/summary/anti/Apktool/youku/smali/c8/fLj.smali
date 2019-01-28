.class public Lc8/fLj;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Lc8/TLj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/ActivityWelcome;->checkFirstRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/ActivityWelcome;


# direct methods
.method public constructor <init>(Lcom/youku/phone/ActivityWelcome;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/phone/ActivityWelcome;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lc8/fLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisagreeClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 178
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 179
    iget-object v0, p0, Lc8/fLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    const-string/jumbo v1, "PREFERENCE"

    invoke-virtual {v0, v1, v2}, Lcom/youku/phone/ActivityWelcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isFirstRun"

    const/4 v2, 0x1

    .line 181
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void
.end method
