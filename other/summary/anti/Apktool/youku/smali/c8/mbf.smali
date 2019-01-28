.class public Lc8/mbf;
.super Ljava/lang/Object;
.source "PanguInitializers.java"

# interfaces
.implements Lc8/hbf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bbf;->start(Lc8/kbf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bbf;

.field final synthetic val$application:Lc8/kbf;


# direct methods
.method constructor <init>(Lc8/Bbf;Lc8/kbf;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lc8/mbf;->this$0:Lc8/Bbf;

    iput-object p2, p0, Lc8/mbf;->val$application:Lc8/kbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    iget-object v0, p0, Lc8/mbf;->this$0:Lc8/Bbf;

    invoke-virtual {v0, p1}, Lc8/Bbf;->doInitOnFistActivityCreate(Landroid/app/Activity;)V

    .line 143
    iget-object v0, p0, Lc8/mbf;->this$0:Lc8/Bbf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Bbf;->startInitializersAnnotatedBy(Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    iget-object v0, p0, Lc8/mbf;->this$0:Lc8/Bbf;

    invoke-virtual {v0, p1}, Lc8/Bbf;->doInitOnFistActivityStarted(Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lc8/mbf;->val$application:Lc8/kbf;

    invoke-virtual {v0, p0}, Lc8/kbf;->unregisterCrossActivityLifecycleCallback(Lc8/hbf;)V

    .line 150
    invoke-static {}, Lc8/Vcf;->scheduleIdleTasks()V

    .line 151
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    return-void
.end method
