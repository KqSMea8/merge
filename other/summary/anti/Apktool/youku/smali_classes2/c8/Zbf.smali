.class public final Lc8/Zbf;
.super Ljava/lang/Object;
.source "NavUri.java"

# interfaces
.implements Lc8/acf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bcf;->scheme(Ljava/lang/String;)Lc8/acf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$nav_uri:Lc8/bcf;


# direct methods
.method constructor <init>(Lc8/bcf;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lc8/Zbf;->val$nav_uri:Lc8/bcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public host(Ljava/lang/String;)Lc8/bcf;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/Zbf;->val$nav_uri:Lc8/bcf;

    iget-object v0, v0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    iget-object v0, p0, Lc8/Zbf;->val$nav_uri:Lc8/bcf;

    return-object v0
.end method
