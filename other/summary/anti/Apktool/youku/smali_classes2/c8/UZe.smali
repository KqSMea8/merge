.class public final Lc8/UZe;
.super Ljava/lang/Object;
.source "Dinamic.java"

# interfaces
.implements Lc8/kef;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VZe;->downloadTemplates(Ljava/util/List;Lc8/eaf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lc8/eaf;


# direct methods
.method constructor <init>(Lc8/eaf;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lc8/UZe;->val$callback:Lc8/eaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lc8/UZe;->val$callback:Lc8/eaf;

    invoke-interface {v0}, Lc8/eaf;->onDownloadFinish()V

    .line 221
    return-void
.end method
