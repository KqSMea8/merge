.class public Lc8/eLj;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Lc8/SLj;


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
    .line 159
    iput-object p1, p0, Lc8/eLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lc8/eLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-static {v0}, Lcom/youku/phone/ActivityWelcome;->access$100(Lcom/youku/phone/ActivityWelcome;)Lc8/ULj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ULj;->dismiss()V

    .line 164
    iget-object v0, p0, Lc8/eLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-static {v0}, Lcom/youku/phone/ActivityWelcome;->access$200(Lcom/youku/phone/ActivityWelcome;)V

    .line 165
    iget-object v0, p0, Lc8/eLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    const-string/jumbo v1, "PREFERENCE"

    invoke-virtual {v0, v1, v2}, Lcom/youku/phone/ActivityWelcome;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isFirstRun"

    .line 167
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void
.end method
