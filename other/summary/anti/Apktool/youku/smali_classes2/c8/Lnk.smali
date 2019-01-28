.class public Lc8/Lnk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nnk;->favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nnk;

.field final synthetic val$plid2:Ljava/lang/String;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Nnk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nnk;

    .prologue
    .line 121
    iput-object p1, p0, Lc8/Lnk;->this$0:Lc8/Nnk;

    iput-object p2, p0, Lc8/Lnk;->val$videoId:Ljava/lang/String;

    iput-object p3, p0, Lc8/Lnk;->val$showid:Ljava/lang/String;

    iput-object p4, p0, Lc8/Lnk;->val$plid2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Lnk;->this$0:Lc8/Nnk;

    iget-object v1, p0, Lc8/Lnk;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Lnk;->val$showid:Ljava/lang/String;

    iget-object v3, p0, Lc8/Lnk;->val$plid2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc8/Nnk;->favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method
