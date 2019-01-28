.class public interface abstract Lc8/HWf;
.super Ljava/lang/Object;
.source "ModuleFactory.java"

# interfaces
.implements Lc8/FWf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/MXf;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/FWf;"
    }
.end annotation


# virtual methods
.method public abstract buildInstance()Lc8/MXf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method
