.class public Lcom/taobao/accs/update/ACCSClassLoader$1;
.super Ljava/lang/Thread;
.source "ACCSClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/update/ACCSClassLoader;->dexopt(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/update/ACCSClassLoader;

.field final synthetic val$dexFile:Ljava/lang/String;

.field final synthetic val$dexoptFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/accs/update/ACCSClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->this$0:Lcom/taobao/accs/update/ACCSClassLoader;

    iput-object p2, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->val$dexFile:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->val$dexoptFile:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 86
    new-instance v0, Lcom/taobao/accs/update/ACCSClassLoader$InnerClassLoader;

    iget-object v2, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->val$dexFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->val$dexoptFile:Ljava/lang/String;

    const/4 v4, 0x0

    const-class v5, Lcom/taobao/accs/update/ACCSClassLoader;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/taobao/accs/update/ACCSClassLoader$InnerClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 90
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string/jumbo v2, "ACCSClassLoader"

    const-string/jumbo v3, "dexOpt done"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->this$0:Lcom/taobao/accs/update/ACCSClassLoader;

    invoke-static {v2, v6}, Lcom/taobao/accs/update/ACCSClassLoader;->access$002(Lcom/taobao/accs/update/ACCSClassLoader;Z)Z

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/taobao/accs/update/ACCSClassLoader$1;->this$0:Lcom/taobao/accs/update/ACCSClassLoader;

    invoke-static {v2}, Lcom/taobao/accs/update/ACCSClassLoader;->access$100(Lcom/taobao/accs/update/ACCSClassLoader;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ACCS_SDK"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 94
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "update_done"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
