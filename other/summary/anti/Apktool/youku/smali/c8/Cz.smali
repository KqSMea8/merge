.class public final Lc8/Cz;
.super Ljava/lang/Object;
.source "ServiceDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fz;->prepareServiceBundle(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$newResult:Lc8/Ez;

.field final synthetic val$retryCount:I

.field final synthetic val$service:Landroid/content/Intent;


# direct methods
.method constructor <init>(ILandroid/content/Intent;Lc8/Ez;)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lc8/Cz;->val$retryCount:I

    iput-object p2, p0, Lc8/Cz;->val$service:Landroid/content/Intent;

    iput-object p3, p0, Lc8/Cz;->val$newResult:Lc8/Ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 279
    iget v1, p0, Lc8/Cz;->val$retryCount:I

    add-int/lit8 v0, v1, -0x1

    .line 280
    .local v0, "newRetryCout":I
    iget-object v1, p0, Lc8/Cz;->val$service:Landroid/content/Intent;

    iget-object v2, p0, Lc8/Cz;->val$newResult:Lc8/Ez;

    invoke-static {v1, v0, v2}, Lc8/Fz;->access$000(Landroid/content/Intent;ILc8/Ez;)Lc8/Ez;

    .line 281
    return-void
.end method
