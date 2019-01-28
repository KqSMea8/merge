.class public interface abstract Lc8/fhq;
.super Ljava/lang/Object;
.source "RequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ehq;
    }
.end annotation


# static fields
.field public static final NONE:Lc8/fhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lc8/dhq;

    invoke-direct {v0}, Lc8/dhq;-><init>()V

    sput-object v0, Lc8/fhq;->NONE:Lc8/fhq;

    return-void
.end method


# virtual methods
.method public abstract intercept(Lc8/ehq;)V
.end method
