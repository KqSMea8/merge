.class public Lc8/Mpb;
.super Lc8/Cob;
.source "WXTabbar.java"

# interfaces
.implements Lc8/Abg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Opb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbedManagedInstance"
.end annotation


# instance fields
.field mEmbedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Dbg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lc8/Cob;-><init>(Landroid/content/Context;)V

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Mpb;->mEmbedMap:Ljava/util/Map;

    .line 320
    return-void
.end method


# virtual methods
.method public getEmbed(Ljava/lang/String;)Lc8/Dbg;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lc8/Mpb;->mEmbedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dbg;

    return-object v0
.end method

.method public putEmbed(Ljava/lang/String;Lc8/Dbg;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "comp"    # Lc8/Dbg;

    .prologue
    .line 329
    iget-object v0, p0, Lc8/Mpb;->mEmbedMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method
