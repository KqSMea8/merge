.class public final Lc8/Uz;
.super Ljava/lang/Object;
.source "ActivityBridge.java"

# interfaces
.implements Lc8/Vz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Wz;->execStartActivity(Landroid/content/Intent;Lc8/sz;)Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$startActivityRunnable:Lc8/sz;


# direct methods
.method constructor <init>(Lc8/sz;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lc8/Uz;->val$startActivityRunnable:Lc8/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Uz;->val$startActivityRunnable:Lc8/sz;

    invoke-virtual {v0, p1}, Lc8/sz;->execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 39
    return-void
.end method
