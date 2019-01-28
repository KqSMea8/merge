.class public Lc8/svf;
.super Ljava/lang/Object;
.source "BytesPoolBuilder.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tvf;->registerComponentCallbacks(Lc8/JNf;)Lc8/JNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tvf;

.field final synthetic val$bytesPool:Lc8/JNf;


# direct methods
.method constructor <init>(Lc8/tvf;Lc8/JNf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tvf;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/svf;->this$0:Lc8/tvf;

    iput-object p2, p0, Lc8/svf;->val$bytesPool:Lc8/JNf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x0

    .line 55
    const-string/jumbo v0, "BytesPool"

    const-string/jumbo v1, "ComponentCallbacks2 onTrimMemory, level=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/svf;->val$bytesPool:Lc8/JNf;

    invoke-interface {v0}, Lc8/JNf;->clear()V

    .line 58
    const-string/jumbo v0, "BytesPool"

    const-string/jumbo v1, "clear all at TRIM_MEMORY_MODERATE"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method
