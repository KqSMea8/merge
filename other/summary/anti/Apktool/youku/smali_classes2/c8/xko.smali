.class public final Lc8/xko;
.super Ljava/lang/Object;
.source "Passport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->initInOtherProcess(Landroid/content/Context;Lc8/kko;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/kko;

.field final synthetic val$aContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc8/kko;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lc8/xko;->val$aContext:Landroid/content/Context;

    iput-object p2, p0, Lc8/xko;->val$aCallback:Lc8/kko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lc8/xko;->val$aContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/xko;->val$aCallback:Lc8/kko;

    invoke-static {v0, v1}, Lc8/Gko;->access$300(Landroid/content/Context;Lc8/kko;)V

    .line 177
    return-void
.end method
