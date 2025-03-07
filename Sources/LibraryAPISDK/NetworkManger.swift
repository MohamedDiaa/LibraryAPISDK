//
//  NetworkManger.swift
//  LibraryAPISDK
//
//  Created by Mohamed Alwakil on 2025-03-07.
//
import Foundation

public class NetworkManger {

    public func fetchPhotos() async throws -> [Photo]? {

        do {
            let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
            let photos: [Photo]? = try await fetch(url: url)
            return photos
        }
        catch {
            return nil
        }
    }

    public func fetchPosts() async throws -> [Post]? {

        do {
            let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
            let list: [Post]? = try await fetch(url: url)
            return list
        }
        catch {
            return nil
        }
    }

    public func fetchComments() async throws -> [Comment]? {

        do {
            let url = URL(string: "https://jsonplaceholder.typicode.com/comments")!
            let list: [Comment]? = try await fetch(url: url)
            return list
        }
        catch {
            return nil
        }
    }

    public func fetchAlbum() async throws -> [Album]? {

        do {
            let url = URL(string: "https://jsonplaceholder.typicode.com/albums")!
            let list: [Album]? = try await fetch(url: url)
            return list
        }
        catch {
            return nil
        }
    }

    public func fetch<T: Decodable>(url: URL) async throws  -> [T]? {
        do {
            let data = try await URLSession.shared.data(from: url)
            let list = try JSONDecoder().decode([T].self, from: data.0)
            return list
        }
        catch {

            return nil
        }
    }
}
